################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/s5k5cag/s5k5cag.c 

OBJS += \
./Drivers/BSP/s5k5cag/s5k5cag.o 

C_DEPS += \
./Drivers/BSP/s5k5cag/s5k5cag.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/s5k5cag/%.o Drivers/BSP/s5k5cag/%.su Drivers/BSP/s5k5cag/%.cyclo: ../Drivers/BSP/s5k5cag/%.c Drivers/BSP/s5k5cag/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F746xx -c -I"D:/Temp/DX_FT8_Project/Katy/Drivers/BSP/STM32746G_DISCOVERY" -I"D:/Temp/DX_FT8_Project/Katy/Inc" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/BSP/wm8994" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/BSP/ft5336" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/STM32F7xx_HAL_Driver/Inc" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/CMSIS/Include" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"D:/Temp/DX_FT8_Project/Katy/Utilities" -I"D:/Temp/DX_FT8_Project/Katy/Utilities/Fonts" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/BSP/rk043fn48h" -I"D:/Temp/DX_FT8_Project/Katy/FT8_library" -I"D:/Temp/DX_FT8_Project/Katy/Middlewares/src" -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-s5k5cag

clean-Drivers-2f-BSP-2f-s5k5cag:
	-$(RM) ./Drivers/BSP/s5k5cag/s5k5cag.cyclo ./Drivers/BSP/s5k5cag/s5k5cag.d ./Drivers/BSP/s5k5cag/s5k5cag.o ./Drivers/BSP/s5k5cag/s5k5cag.su

.PHONY: clean-Drivers-2f-BSP-2f-s5k5cag

