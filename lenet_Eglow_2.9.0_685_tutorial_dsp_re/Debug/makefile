################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include utilities/subdir.mk
-include source/subdir.mk
-include rpmsg_lite/porting/subdir.mk
-include rpmsg_lite/env/freertos/subdir.mk
-include rpmsg_lite/subdir.mk
-include pmic_driver/subdir.mk
-include nn/subdir.mk
-include glow_utils/subdir.mk
-include glow_bundle/subdir.mk
-include freertos/freertos_kernel/portable/MemMang/subdir.mk
-include freertos/freertos_kernel/portable/GCC/ARM_CM33_NTZ/non_secure/subdir.mk
-include freertos/freertos_kernel/subdir.mk
-include flash_config/subdir.mk
-include drivers/subdir.mk
-include component/uart/subdir.mk
-include component/serial_manager/subdir.mk
-include component/lists/subdir.mk
-include board/subdir.mk
-include MIMXRT685S/mcuxpresso/subdir.mk
-include MIMXRT685S/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: lenet_Eglow_2.9.0_685_tutorial_dsp_re.axf

# Tool invocations
lenet_Eglow_2.9.0_685_tutorial_dsp_re.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -Xlinker --no-wchar-size-warning -Xlinker -Map="lenet_Eglow_2.9.0_685_tutorial_dsp_re.map" -Xlinker --gc-sections -Xlinker -print-memory-usage -Xlinker --sort-section=alignment -Xlinker --cref -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -T "lenet_Eglow_2_9_0_685_tutorial_dsp_re_Debug.ld" -o "lenet_Eglow_2.9.0_685_tutorial_dsp_re.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) lenet_Eglow_2.9.0_685_tutorial_dsp_re.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "lenet_Eglow_2.9.0_685_tutorial_dsp_re.axf"; # arm-none-eabi-objcopy -v -O binary "lenet_Eglow_2.9.0_685_tutorial_dsp_re.axf" "lenet_Eglow_2.9.0_685_tutorial_dsp_re.bin" ; # checksum -p MIMXRT685S -d "lenet_Eglow_2.9.0_685_tutorial_dsp_re.bin";
	-@echo ' '

.PHONY: all clean dependents post-build

-include ../makefile.targets
