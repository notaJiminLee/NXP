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
#include "pin_mux.h"
#include "clock_config.h"
#include "board.h"
#include "counter.h"

/*******************************************************************************
 * Definitions
 ******************************************************************************/

// ----------------------------- Bundle API -----------------------------
// Bundle includes.
#include "lenet_mnist.h"
#include "glow_bundle_utils.h"

// Statically allocate memory for constant weights (model weights) and initialize.
GLOW_MEM_ALIGN(LENET_MNIST_MEM_ALIGN)
uint8_t constantWeight[LENET_MNIST_CONSTANT_MEM_SIZE] = {
#include "lenet_mnist.weights.txt"
};

// Statically allocate memory for mutable weights (model input/output data).
GLOW_MEM_ALIGN(LENET_MNIST_MEM_ALIGN)
uint8_t mutableWeight[LENET_MNIST_MUTABLE_MEM_SIZE];

// Statically allocate memory for activations (model intermediate results).
GLOW_MEM_ALIGN(LENET_MNIST_MEM_ALIGN)
uint8_t activations[LENET_MNIST_ACTIVATIONS_MEM_SIZE];

// Bundle input data absolute address.
uint8_t *inputAddr = GLOW_GET_ADDR(mutableWeight, LENET_MNIST_data);

// Bundle output data absolute address.
uint8_t *outputAddr = GLOW_GET_ADDR(mutableWeight, LENET_MNIST_softmax);


/*******************************************************************************
 * Prototypes
 ******************************************************************************/

/*******************************************************************************
 * Variables
 ******************************************************************************/
// Lenet Mnist model input data size (bytes).
#define LENET_MNIST_INPUT_SIZE    28*28*sizeof(float)

// Lenet Mnist model number of output classes.
#define LENET_MNIST_OUTPUT_CLASS  10

// Allocate buffer for input data. This buffer contains the input image
// pre-processed and serialized as text to include here.
uint8_t imageData[LENET_MNIST_INPUT_SIZE] = {
#include "input_image.inc"
};

/*******************************************************************************
 * Code
 ******************************************************************************/


/*********************************** CIFAR10 **********************************/

/*!
 * @brief Main function
 */
int main(void)
{
    volatile unsigned long tic, toc;
    float time_ms;
    float accuracy = 0.0;

    BOARD_InitPins();
    BOARD_BootClockRUN();
    BOARD_InitDebugConsole();

    /* Clear MUA reset before run DSP core */
    RESET_PeripheralReset(kMU_RST_SHIFT_RSTn);

    // Load input data from FLASH to SRAM
	memcpy(inputAddr, imageData, sizeof(imageData));

    // Perform inference and get inference time
    KIN1_ResetCycleCounter();
    tic = get_ccount();
    Lenet_mnist(constantWeight, mutableWeight, activations);
    toc     = get_ccount();
    time_ms = COUNT_TO_USEC((toc - tic), SystemCoreClock) / 1000.0;

    // Get classification top1 result and confidence
    float *out_data = (float*)(outputAddr);
	  float max_val = 0.0;
	  uint32_t max_idx = 0;
	  for(int i = 0; i < LENET_MNIST_OUTPUT_CLASS; i++) {
		if (out_data[i] > max_val) {
		  max_val = out_data[i];
		  max_idx = i;
		}
	  }


    // Print classification results
    PRINTF("Top1 class = %d\r\n", max_idx);
    PRINTF("Confidence = %.3f\r\n", max_val);
    PRINTF("Inference = %d (ms)\r\n", (int)time_ms);
    PRINTF("\r\n");

    return 0;
}
