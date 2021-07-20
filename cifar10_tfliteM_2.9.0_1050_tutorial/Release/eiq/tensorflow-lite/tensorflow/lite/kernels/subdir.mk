################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../eiq/tensorflow-lite/tensorflow/lite/kernels/kernel_util.cc 

CC_DEPS += \
./eiq/tensorflow-lite/tensorflow/lite/kernels/kernel_util.d 

OBJS += \
./eiq/tensorflow-lite/tensorflow/lite/kernels/kernel_util.o 


# Each subdirectory must supply rules for building sources it contributes
eiq/tensorflow-lite/tensorflow/lite/kernels/%.o: ../eiq/tensorflow-lite/tensorflow/lite/kernels/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -std=gnu++11 -DCPU_MIMXRT1052DVL6B -DCPU_MIMXRT1052DVL6B_cm7 -DSDK_DEBUGCONSOLE_UART -DFLATBUFFERS_LITTLEENDIAN -DGEMMLOWP_MCU -DTFLITE_MCU -DARM_MATH_CM7 -D__FPU_PRESENT=1 -DSDK_I2C_BASED_COMPONENT_USED=1 -DSDK_DEBUGCONSOLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DNDEBUG -D__NEWLIB__ -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_1050_tutorial\board" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_1050_tutorial\source" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_1050_tutorial\drivers" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_1050_tutorial\utilities" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_1050_tutorial\eiq\tensorflow-lite" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_1050_tutorial\eiq\tensorflow-lite\third_party" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_1050_tutorial\eiq\tensorflow-lite\third_party\flatbuffers\include" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_1050_tutorial\eiq\tensorflow-lite\third_party\gemmlowp" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_1050_tutorial\component\lists" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_1050_tutorial\component\uart" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_1050_tutorial\device" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_1050_tutorial\xip" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_1050_tutorial\CMSIS" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_1050_tutorial\source\model" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_1050_tutorial\eiq\tensorflow-lite\third_party\ruy" -O3 -fno-common -g -Wall -fno-rtti -fno-exceptions -Wno-sign-compare -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -D__NEWLIB__ -fstack-usage -specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


