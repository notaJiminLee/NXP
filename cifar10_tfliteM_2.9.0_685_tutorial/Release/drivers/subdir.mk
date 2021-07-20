################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/fsl_cache.c \
../drivers/fsl_clock.c \
../drivers/fsl_common.c \
../drivers/fsl_flexcomm.c \
../drivers/fsl_flexspi.c \
../drivers/fsl_gpio.c \
../drivers/fsl_power.c \
../drivers/fsl_reset.c \
../drivers/fsl_usart.c 

OBJS += \
./drivers/fsl_cache.o \
./drivers/fsl_clock.o \
./drivers/fsl_common.o \
./drivers/fsl_flexcomm.o \
./drivers/fsl_flexspi.o \
./drivers/fsl_gpio.o \
./drivers/fsl_power.o \
./drivers/fsl_reset.o \
./drivers/fsl_usart.o 

C_DEPS += \
./drivers/fsl_cache.d \
./drivers/fsl_clock.d \
./drivers/fsl_common.d \
./drivers/fsl_flexcomm.d \
./drivers/fsl_flexspi.d \
./drivers/fsl_gpio.d \
./drivers/fsl_power.d \
./drivers/fsl_reset.d \
./drivers/fsl_usart.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/%.o: ../drivers/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -DCPU_MIMXRT685SFVKB -DCPU_MIMXRT685SFVKB_cm33 -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -DSERIAL_PORT_TYPE_UART=1 -DBOOT_HEADER_ENABLE=1 -DSDK_DEBUGCONSOLE=0 -DFSL_SDK_DRIVER_QUICK_ACCESS_ENABLE=1 -D__MCUXPRESSO -D__USE_CMSIS -DNDEBUG -D__NEWLIB__ -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\board" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\source" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\drivers" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\component\uart" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\utilities" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\component\serial_manager" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\flash_config" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\component\lists" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\MIMXRT685S" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\CMSIS" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\eiq\tensorflow-lite" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\eiq\tensorflow-lite\third_party\gemmlowp" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\eiq\tensorflow-lite\third_party\flatbuffers\include" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\eiq\tensorflow-lite\third_party\ruy" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\cifar10_tfliteM_2.9.0_685_tutorial\source\model" -Os -fno-common -g -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__NEWLIB__ -fstack-usage -specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


