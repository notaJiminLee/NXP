/*
 * Copyright 2018-2019 NXP
 * All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include "FreeRTOS.h"
#include "fsl_debug_console.h"
#include "task.h"
#include "queue.h"
#include "dsp_ipc.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "board.h"
#include "counter.h"

#include "dsp_support.h"
/*******************************************************************************
 * Definitions
 ******************************************************************************/

#if defined(__ICCARM__)
// Model input data FLASH section
#pragma section = "__input_section"
#define INPUT_DATA_START (void *)__section_begin("__input_section")

// Model weights FLASH section
#pragma section = "__weights_section"
#define WEIGHT_DATA_START (void *)__section_begin("__weights_section")

// Model reference data FLASH section
#pragma section = "__output_section"
#define OUTPUT_DATA_START (void *)__section_begin("__output_section")
#elif defined(__GNUC__)
// Model input data FLASH section
extern const char input_section[];
#define INPUT_DATA_START  ((void *)input_section)
// Model weights FLASH section
extern const char weights_section[];
#define WEIGHT_DATA_START ((void *)weights_section)
// Model reference data FLASH section
extern const char output_section[];
#define OUTPUT_DATA_START ((void **)output_section)
#else
#error "Not supported!"
#endif

#define NN_APP_TASK_STACK_SIZE (512)

//--------------------------- Glow Bundle API ----------------------------------
#include "Lenet_mnist.h"
#include "glow_bundle_utils.h"

// Statically allocate memory for mutable weights (model input/output data).
GLOW_MEM_ALIGN(LENET_MNIST_MEM_ALIGN)
uint8_t mutableWeight[LENET_MNIST_MUTABLE_MEM_SIZE];

// Statically allocate memory for activations (model intermediate results).
GLOW_MEM_ALIGN(LENET_MNIST_MEM_ALIGN)
uint8_t activations[LENET_MNIST_ACTIVATIONS_MEM_SIZE];

// Bundle input/output data absolute addresses.
uint8_t *bundleInpAddr = GLOW_GET_ADDR(mutableWeight, LENET_MNIST_data);
uint8_t *bundleOutAddr = GLOW_GET_ADDR(mutableWeight, LENET_MNIST_softmax);

// Model input data size (bytes).
#define INPUT_IMAGE_SIZE 28 * 28 * sizeof(float)

// Model number of output classes.
#define OUTPUT_NUM_CLASS 10

// Number of images to run inference
#define NUM_IMAGES 1

/*******************************************************************************
 * Prototypes
 ******************************************************************************/

/*******************************************************************************
 * Variables
 ******************************************************************************/
uint8_t imageData[INPUT_IMAGE_SIZE] = {
#include "input_image.inc"
};

GLOW_MEM_ALIGN(LENET_MNIST_MEM_ALIGN)
uint8_t constantWeight[LENET_MNIST_CONSTANT_MEM_SIZE] = {
#include "Lenet_mnist.weights.txt"
};
/*******************************************************************************
 * Code
 ******************************************************************************/

void app_nameservice_isr_cb(unsigned int new_ept, const char *new_ept_name, unsigned long flags, void *user_data)
{
    unsigned long *data = (unsigned long *)user_data;

    *data = new_ept;
}

/*********************************** CIFAR10 **********************************/

static TaskHandle_t nn_app_task_handle = NULL;
void nn_app_task(void *param)
{
    volatile unsigned long tic, toc;
    float time_ms;
    float accuracy = 0.0;

    // Run inference for all images
    for (int idx = 0; idx < NUM_IMAGES; idx++)
    {
        // Load input data from FLASH to SRAM
        memcpy(bundleInpAddr, ((char *)imageData) + idx * INPUT_IMAGE_SIZE, INPUT_IMAGE_SIZE);

        // Perform inference and get inference time
        KIN1_ResetCycleCounter();
        tic = get_ccount();
        Lenet_mnist(constantWeight, mutableWeight, activations);
        toc     = get_ccount();
        time_ms = COUNT_TO_USEC((toc - tic), SystemCoreClock) / 1000.0;

        // Get classification top1 result and confidence
        float *out_data  = (float *)(bundleOutAddr);
        float max_val    = 0.0;
        uint32_t max_idx = 0;
        for (int i = 0; i < OUTPUT_NUM_CLASS; i++)
        {
            if (out_data[i] > max_val)
            {
                max_val = out_data[i];
                max_idx = i;
            }
        }

        // Get reference class and update accuracy
        int ref_idx = ((int *)OUTPUT_DATA_START)[idx];
        accuracy += ((max_idx == ref_idx) ? 1.0 : 0.0);

        // Print classification results
        PRINTF("Top1 class = %d\r\n", max_idx);
        PRINTF("Confidence = %.3f\r\n", max_val);
        PRINTF("Inference = %d (ms)\r\n", (int)time_ms);
        PRINTF("\r\n");
    }

    while (1)
        ;
}

/*!
 * @brief Main function
 */
int main(void)
{
    BOARD_InitPins();
    BOARD_BootClockRUN();
    BOARD_InitDebugConsole();

    /* Clear MUA reset before run DSP core */
    RESET_PeripheralReset(kMU_RST_SHIFT_RSTn);

    /* Start dsp firmware */
    BOARD_DSP_IPC_Init();
    BOARD_DSP_Init();

    if (xTaskCreate(nn_app_task, "NN_APP_TASK", NN_APP_TASK_STACK_SIZE, NULL, tskIDLE_PRIORITY + 1,
                    &nn_app_task_handle) != pdPASS)
    {
        PRINTF("\r\nFailed to create nn application task\r\n");
        while (1)
            ;
    }

    vTaskStartScheduler();

    PRINTF("Failed to start FreeRTOS on core0.\r\n");
    while (1)
        ;
}


