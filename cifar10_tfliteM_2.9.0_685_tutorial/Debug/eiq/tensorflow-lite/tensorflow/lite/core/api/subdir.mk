################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../eiq/tensorflow-lite/tensorflow/lite/core/api/error_reporter.cc \
../eiq/tensorflow-lite/tensorflow/lite/core/api/flatbuffer_conversions.cc \
../eiq/tensorflow-lite/tensorflow/lite/core/api/op_resolver.cc \
../eiq/tensorflow-lite/tensorflow/lite/core/api/tensor_utils.cc 

CC_DEPS += \
./eiq/tensorflow-lite/tensorflow/lite/core/api/error_reporter.d \
./eiq/tensorflow-lite/tensorflow/lite/core/api/flatbuffer_conversions.d \
./eiq/tensorflow-lite/tensorflow/lite/core/api/op_resolver.d \
./eiq/tensorflow-lite/tensorflow/lite/core/api/tensor_utils.d 

OBJS += \
./eiq/tensorflow-lite/tensorflow/lite/core/api/error_reporter.o \
./eiq/tensorflow-lite/tensorflow/lite/core/api/flatbuffer_conversions.o \
./eiq/tensorflow-lite/tensorflow/lite/core/api/op_resolver.o \
./eiq/tensorflow-lite/tensorflow/lite/core/api/tensor_utils.o 


# Each subdirectory must supply rules for building sources it contributes
eiq/tensorflow-lite/tensorflow/lite/core/api/%.o: ../eiq/tensorflow-lite/tensorflow/lite/core/api/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DCPU_MIMXRT685SFVKB -DCPU_MIMXRT685SFVKB_cm33 -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -DSERIAL_PORT_TYPE_UART=1 -DBOOT_HEADER_ENABLE=1 -DSDK_DEBUGCONSOLE=0 -DFSL_SDK_DRIVER_QUICK_ACCESS_ENABLE=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\board" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\source" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\drivers" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\component\uart" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\utilities" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\component\serial_manager" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\flash_config" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\component\lists" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\MIMXRT685S" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\CMSIS" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\eiq\tensorflow-lite" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\eiq\tensorflow-lite\third_party\flatbuffers\include" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\eiq\tensorflow-lite\third_party\gemmlowp" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\eiq\tensorflow-lite\third_party\ruy" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\source\model" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fno-rtti -fno-exceptions -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__NEWLIB__ -fstack-usage -specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


