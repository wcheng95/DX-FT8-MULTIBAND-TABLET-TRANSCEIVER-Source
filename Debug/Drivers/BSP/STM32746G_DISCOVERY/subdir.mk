################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery.c \
../Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_audio.c \
../Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_eeprom.c \
../Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_lcd.c \
../Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_sd.c \
../Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_sdram.c \
../Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_ts.c 

OBJS += \
./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery.o \
./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_audio.o \
./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_eeprom.o \
./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_lcd.o \
./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_sd.o \
./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_sdram.o \
./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_ts.o 

C_DEPS += \
./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery.d \
./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_audio.d \
./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_eeprom.d \
./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_lcd.d \
./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_sd.d \
./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_sdram.d \
./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_ts.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/STM32746G_DISCOVERY/%.o Drivers/BSP/STM32746G_DISCOVERY/%.su Drivers/BSP/STM32746G_DISCOVERY/%.cyclo: ../Drivers/BSP/STM32746G_DISCOVERY/%.c Drivers/BSP/STM32746G_DISCOVERY/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F746xx -c -I"D:/Temp/DX_FT8_Project/Katy/Drivers/BSP/STM32746G_DISCOVERY" -I"D:/Temp/DX_FT8_Project/Katy/Inc" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/BSP/wm8994" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/BSP/ft5336" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/STM32F7xx_HAL_Driver/Inc" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/CMSIS/Include" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"D:/Temp/DX_FT8_Project/Katy/Utilities" -I"D:/Temp/DX_FT8_Project/Katy/Utilities/Fonts" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/BSP/rk043fn48h" -I"D:/Temp/DX_FT8_Project/Katy/FT8_library" -I"D:/Temp/DX_FT8_Project/Katy/Middlewares/src" -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-STM32746G_DISCOVERY

clean-Drivers-2f-BSP-2f-STM32746G_DISCOVERY:
	-$(RM) ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery.cyclo ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery.d ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery.o ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery.su ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_audio.cyclo ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_audio.d ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_audio.o ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_audio.su ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_eeprom.cyclo ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_eeprom.d ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_eeprom.o ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_eeprom.su ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_lcd.cyclo ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_lcd.d ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_lcd.o ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_lcd.su ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_sd.cyclo ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_sd.d ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_sd.o ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_sd.su ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_sdram.cyclo ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_sdram.d ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_sdram.o ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_sdram.su ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_ts.cyclo ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_ts.d ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_ts.o ./Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_ts.su

.PHONY: clean-Drivers-2f-BSP-2f-STM32746G_DISCOVERY

