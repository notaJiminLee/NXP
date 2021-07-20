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
-include eiq/tensorflow-lite/tensorflow/lite/micro/testing/subdir.mk
-include eiq/tensorflow-lite/tensorflow/lite/micro/memory_planner/subdir.mk
-include eiq/tensorflow-lite/tensorflow/lite/micro/kernels/portable_optimized/subdir.mk
-include eiq/tensorflow-lite/tensorflow/lite/micro/kernels/subdir.mk
-include eiq/tensorflow-lite/tensorflow/lite/micro/subdir.mk
-include eiq/tensorflow-lite/tensorflow/lite/kernels/internal/subdir.mk
-include eiq/tensorflow-lite/tensorflow/lite/kernels/subdir.mk
-include eiq/tensorflow-lite/tensorflow/lite/core/api/subdir.mk
-include eiq/tensorflow-lite/tensorflow/lite/c/subdir.mk
-include drivers/subdir.mk
-include device/subdir.mk
-include component/uart/subdir.mk
-include component/lists/subdir.mk
-include board/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: cifar10_tfliteM_2.9.0_1050_tutorial.axf

# Tool invocations
cifar10_tfliteM_2.9.0_1050_tutorial.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU C++ Linker'
	arm-none-eabi-c++ -nostdlib -Xlinker -Map="cifar10_tfliteM_2.9.0_1050_tutorial.map" -Xlinker --gc-sections -Xlinker -print-memory-usage -Xlinker --sort-section=alignment -Xlinker --cref -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -T "cifar10_tfliteM_2_9_0_1050_tutorial_Release.ld" -o "cifar10_tfliteM_2.9.0_1050_tutorial.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(C++_DEPS)$(EXECUTABLES)$(C_UPPER_DEPS)$(CXX_DEPS)$(OBJS)$(CPP_DEPS)$(C_DEPS) cifar10_tfliteM_2.9.0_1050_tutorial.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "cifar10_tfliteM_2.9.0_1050_tutorial.axf"; # arm-none-eabi-objcopy -v -O binary "cifar10_tfliteM_2.9.0_1050_tutorial.axf" "cifar10_tfliteM_2.9.0_1050_tutorial.bin" ; # checksum -p MIMXRT1052xxxxB -d "cifar10_tfliteM_2.9.0_1050_tutorial.bin";
	-@echo ' '

.PHONY: all clean dependents post-build

-include ../makefile.targets
