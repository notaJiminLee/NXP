################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rpmsg_lite/porting/rpmsg_platform.c 

OBJS += \
./rpmsg_lite/porting/rpmsg_platform.o 

C_DEPS += \
./rpmsg_lite/porting/rpmsg_platform.d 


# Each subdirectory must supply rules for building sources it contributes
rpmsg_lite/porting/%.o: ../rpmsg_lite/porting/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MIMXRT685SFVKB -DCPU_MIMXRT685SFVKB_cm33 -DBOOT_HEADER_ENABLE=1 -DFSL_SDK_DRIVER_QUICK_ACCESS_ENABLE=1 -DDSP_IMAGE_COPY_TO_RAM=1 -DDEBUG_CONSOLE_TRANSFER_NON_BLOCKING -DPRINTF_ADVANCED_ENABLE=1 -DPRINTF_FLOAT_ENABLE=1 -DSCANF_ADVANCED_ENABLE=1 -DSCANF_FLOAT_ENABLE=1 -DSDK_I2C_BASED_COMPONENT_USED=1 -DSERIAL_PORT_TYPE_UART=1 -DFSL_RTOS_FREE_RTOS -DSDK_DEBUGCONSOLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\board" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\source" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\drivers" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\freertos\freertos_kernel\portable\GCC\ARM_CM33_NTZ\non_secure" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\rpmsg_lite\porting" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\pmic_driver" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\MIMXRT685S" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\utilities" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\component\uart" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\flash_config" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\component\serial_manager" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\component\lists" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\CMSIS" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\freertos\freertos_kernel\include" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\rpmsg_lite" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\nn" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\glow_utils" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\glow_bundle" -O0 -fno-common -g3 -mcpu=cortex-m33 -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


