################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../eiq/tensorflow-lite/tensorflow/lite/micro/all_ops_resolver.cc \
../eiq/tensorflow-lite/tensorflow/lite/micro/debug_log.cc \
../eiq/tensorflow-lite/tensorflow/lite/micro/memory_helpers.cc \
../eiq/tensorflow-lite/tensorflow/lite/micro/micro_allocator.cc \
../eiq/tensorflow-lite/tensorflow/lite/micro/micro_error_reporter.cc \
../eiq/tensorflow-lite/tensorflow/lite/micro/micro_interpreter.cc \
../eiq/tensorflow-lite/tensorflow/lite/micro/micro_optional_debug_tools.cc \
../eiq/tensorflow-lite/tensorflow/lite/micro/micro_string.cc \
../eiq/tensorflow-lite/tensorflow/lite/micro/micro_time.cc \
../eiq/tensorflow-lite/tensorflow/lite/micro/micro_utils.cc \
../eiq/tensorflow-lite/tensorflow/lite/micro/recording_simple_memory_allocator.cc \
../eiq/tensorflow-lite/tensorflow/lite/micro/simple_memory_allocator.cc \
../eiq/tensorflow-lite/tensorflow/lite/micro/test_helpers.cc 

CC_DEPS += \
./eiq/tensorflow-lite/tensorflow/lite/micro/all_ops_resolver.d \
./eiq/tensorflow-lite/tensorflow/lite/micro/debug_log.d \
./eiq/tensorflow-lite/tensorflow/lite/micro/memory_helpers.d \
./eiq/tensorflow-lite/tensorflow/lite/micro/micro_allocator.d \
./eiq/tensorflow-lite/tensorflow/lite/micro/micro_error_reporter.d \
./eiq/tensorflow-lite/tensorflow/lite/micro/micro_interpreter.d \
./eiq/tensorflow-lite/tensorflow/lite/micro/micro_optional_debug_tools.d \
./eiq/tensorflow-lite/tensorflow/lite/micro/micro_string.d \
./eiq/tensorflow-lite/tensorflow/lite/micro/micro_time.d \
./eiq/tensorflow-lite/tensorflow/lite/micro/micro_utils.d \
./eiq/tensorflow-lite/tensorflow/lite/micro/recording_simple_memory_allocator.d \
./eiq/tensorflow-lite/tensorflow/lite/micro/simple_memory_allocator.d \
./eiq/tensorflow-lite/tensorflow/lite/micro/test_helpers.d 

OBJS += \
./eiq/tensorflow-lite/tensorflow/lite/micro/all_ops_resolver.o \
./eiq/tensorflow-lite/tensorflow/lite/micro/debug_log.o \
./eiq/tensorflow-lite/tensorflow/lite/micro/memory_helpers.o \
./eiq/tensorflow-lite/tensorflow/lite/micro/micro_allocator.o \
./eiq/tensorflow-lite/tensorflow/lite/micro/micro_error_reporter.o \
./eiq/tensorflow-lite/tensorflow/lite/micro/micro_interpreter.o \
./eiq/tensorflow-lite/tensorflow/lite/micro/micro_optional_debug_tools.o \
./eiq/tensorflow-lite/tensorflow/lite/micro/micro_string.o \
./eiq/tensorflow-lite/tensorflow/lite/micro/micro_time.o \
./eiq/tensorflow-lite/tensorflow/lite/micro/micro_utils.o \
./eiq/tensorflow-lite/tensorflow/lite/micro/recording_simple_memory_allocator.o \
./eiq/tensorflow-lite/tensorflow/lite/micro/simple_memory_allocator.o \
./eiq/tensorflow-lite/tensorflow/lite/micro/test_helpers.o 


# Each subdirectory must supply rules for building sources it contributes
eiq/tensorflow-lite/tensorflow/lite/micro/%.o: ../eiq/tensorflow-lite/tensorflow/lite/micro/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DCPU_MIMXRT685SFVKB -DCPU_MIMXRT685SFVKB_cm33 -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -DSERIAL_PORT_TYPE_UART=1 -DBOOT_HEADER_ENABLE=1 -DSDK_DEBUGCONSOLE=0 -DFSL_SDK_DRIVER_QUICK_ACCESS_ENABLE=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\board" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\source" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\drivers" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\component\uart" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\utilities" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\component\serial_manager" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\flash_config" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\component\lists" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\MIMXRT685S" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\CMSIS" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\eiq\tensorflow-lite" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\eiq\tensorflow-lite\third_party\flatbuffers\include" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\eiq\tensorflow-lite\third_party\gemmlowp" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\eiq\tensorflow-lite\third_party\ruy" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\source\model" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fno-rtti -fno-exceptions -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__NEWLIB__ -fstack-usage -specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


