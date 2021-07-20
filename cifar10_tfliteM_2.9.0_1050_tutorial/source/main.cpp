/*
 * Copyright 2020 NXP
 * All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */


#include "board.h"
#include "timer.h"
#include "pin_mux.h"
#include "fsl_debug_console.h"

#include "tensorflow/lite/micro/kernels/micro_ops.h"
#include "tensorflow/lite/micro/micro_error_reporter.h"
#include "tensorflow/lite/micro/micro_interpreter.h"
#include "tensorflow/lite/micro/micro_mutable_op_resolver.h"
#include "tensorflow/lite/version.h"
#include "model_data.h"
#include "image_data.h"

namespace {
  tflite::ErrorReporter* error_reporter = nullptr;
  const tflite::Model* model = nullptr;
  tflite::MicroInterpreter* interpreter = nullptr;
  TfLiteTensor* model_input = nullptr;
  TfLiteTensor* model_output = nullptr;

  constexpr int kTensorArenaSize = 50000;
  __attribute__((aligned(16)))uint8_t tensor_arena[kTensorArenaSize];
}

const char* labels[] = {
    "airplane",
    "automobile",
    "bird",
    "cat",
    "deer",
    "dog",
    "frog",
    "horse",
    "ship",
    "truck"
};

int main()
{
	int num_elements = 0;
	TfLiteStatus tflite_status;  // For checking TFLM function result
	unsigned long timestamp;
	int max_index = 0, max_value = 0;

	BOARD_ConfigMPU();
	BOARD_InitDEBUG_UARTPins();
	BOARD_InitSDRAMPins();
	BOARD_BootClockRUN();
	BOARD_InitDebugConsole();
    TIMER_Init();

    static tflite::MicroErrorReporter micro_error_reporter;
	error_reporter = &micro_error_reporter;

	model = tflite::GetModel(model_data);
	if (model->version() != TFLITE_SCHEMA_VERSION)
	{
		error_reporter->Report("Model version does not match Schema");
		while(1);
	}

	static tflite::MicroMutableOpResolver<4> micro_op_resolver;
	micro_op_resolver.AddBuiltin(
			  tflite::BuiltinOperator_CONV_2D,
			  tflite::ops::micro::Register_CONV_2D());
	  micro_op_resolver.AddBuiltin(
			  tflite::BuiltinOperator_MAX_POOL_2D,
			  tflite::ops::micro::Register_MAX_POOL_2D());
	  micro_op_resolver.AddBuiltin(
			  tflite::BuiltinOperator_FULLY_CONNECTED,
			  tflite::ops::micro::Register_FULLY_CONNECTED());
	  micro_op_resolver.AddBuiltin(
			  tflite::BuiltinOperator_SOFTMAX,
			  tflite::ops::micro::Register_SOFTMAX());

	static tflite::MicroInterpreter static_interpreter(
	        model, micro_op_resolver, tensor_arena, kTensorArenaSize, error_reporter);
	interpreter = &static_interpreter;

	TfLiteStatus allocate_status = interpreter->AllocateTensors();
	if (allocate_status != kTfLiteOk)
	{
		error_reporter->Report("AllocateTensors() failed");
		while(1);
	}

	model_input = interpreter->input(0);
	model_output = interpreter->output(0);

	num_elements = model_input->bytes / sizeof(uint8);
	PRINTF("\r\nNumber of input elements: %lu\r\n", num_elements);

	while(1){
		for(int i=0; i<num_elements; i++){
			model_input->data.uint8[i] = image_data[i];
		}

		timestamp = TIMER_GetTimeInUS();
		tflite_status = interpreter->Invoke();
		if (tflite_status != kTfLiteOk)
		{
			error_reporter->Report("Invoke failed");
		}

		max_value = model_output->data.uint8[0];
		for(int i=1;i<10;i++){
			if(max_value < model_output->data.uint8[i]){
				max_value = model_output->data.uint8[i];
				max_index = i;
			}
			//PRINTF("output %d is %d\r\n", i, model_output->data.uint8[i]);
		}
		PRINTF("Detected : %s (%.3f)\r\n", labels[max_index], (float)max_value/256.0f);
		PRINTF("Duration : %lu us\r\n\r\n", TIMER_GetTimeInUS() - timestamp);
	}
}

extern "C" void DebugLog(const char* s) {
	PRINTF("%s\r\n", s);
}
