################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../pmic_driver/fsl_pca9420.c 

OBJS += \
./pmic_driver/fsl_pca9420.o 

C_DEPS += \
./pmic_driver/fsl_pca9420.d 


# Each subdirectory must supply rules for building sources it contributes
pmic_driver/%.o: ../pmic_driver/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCPU_MIMXRT685SFVKB -DCPU_MIMXRT685SFVKB_cm33 -DBOOT_HEADER_ENABLE=1 -DFSL_SDK_DRIVER_QUICK_ACCESS_ENABLE=1 -DDSP_IMAGE_COPY_TO_RAM=1 -DDEBUG_CONSOLE_TRANSFER_NON_BLOCKING -DPRINTF_ADVANCED_ENABLE=1 -DPRINTF_FLOAT_ENABLE=1 -DSCANF_ADVANCED_ENABLE=1 -DSCANF_FLOAT_ENABLE=1 -DSDK_I2C_BASED_COMPONENT_USED=1 -DSERIAL_PORT_TYPE_UART=1 -DFSL_RTOS_FREE_RTOS -DSDK_DEBUGCONSOLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DNDEBUG -D__REDLIB__ -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\board" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\source" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\drivers" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\freertos\freertos_kernel\portable\GCC\ARM_CM33_NTZ\non_secure" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\rpmsg_lite\porting" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\pmic_driver" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\MIMXRT685S" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\utilities" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\component\uart" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\flash_config" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\component\serial_manager" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\component\lists" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\CMSIS" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\freertos\freertos_kernel\include" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\rpmsg_lite" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\nn" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\glow_utils" -I"C:\Users\NOTA0801\Documents\MCUXpressoIDE_11.3.0_5222\workspace\lenet_Eglow_2.9.0_685_tutorial_re\glow_bundle" -Os -fno-common -g -mcpu=cortex-m33 -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


