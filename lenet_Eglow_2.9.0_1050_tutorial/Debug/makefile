################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include xip/subdir.mk
-include utilities/subdir.mk
-include startup/subdir.mk
-include source/subdir.mk
-include eiq/glow/bundle_utils/subdir.mk
-include drivers/subdir.mk
-include device/subdir.mk
-include component/uart/subdir.mk
-include component/lists/subdir.mk
-include board/subdir.mk
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
all: lenet_Pglow_2.9.0_1050_tutorial.axf

# Tool invocations
lenet_Pglow_2.9.0_1050_tutorial.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -Xlinker --no-wchar-size-warning -Xlinker -Map="lenet_Pglow_2.9.0_1050_tutorial.map" -Xlinker --gc-sections -Xlinker -print-memory-usage -Xlinker --sort-section=alignment -Xlinker --cref -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -T "lenet_Pglow_2_9_0_1050_tutorial_Debug.ld" -o "lenet_Pglow_2.9.0_1050_tutorial.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) lenet_Pglow_2.9.0_1050_tutorial.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "lenet_Pglow_2.9.0_1050_tutorial.axf"; # arm-none-eabi-objcopy -v -O binary "lenet_Pglow_2.9.0_1050_tutorial.axf" "lenet_Pglow_2.9.0_1050_tutorial.bin" ; # checksum -p MIMXRT1052xxxxB -d "lenet_Pglow_2.9.0_1050_tutorial.bin";
	-@echo ' '

.PHONY: all clean dependents post-build

-include ../makefile.targets
