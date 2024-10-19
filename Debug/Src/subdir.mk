################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/ADIF.c \
../Src/Codec_Gains.c \
../Src/DS3231.c \
../Src/Display.c \
../Src/FIR_Coefficients.c \
../Src/Process_DSP.c \
../Src/SDR_Audio.c \
../Src/SiLabs.c \
../Src/Sine_table.c \
../Src/button.c \
../Src/decode_ft8.c \
../Src/gen_ft8.c \
../Src/log_file.c \
../Src/main.c \
../Src/options.c \
../Src/stm32f7xx_it.c \
../Src/traffic_manager.c 

OBJS += \
./Src/ADIF.o \
./Src/Codec_Gains.o \
./Src/DS3231.o \
./Src/Display.o \
./Src/FIR_Coefficients.o \
./Src/Process_DSP.o \
./Src/SDR_Audio.o \
./Src/SiLabs.o \
./Src/Sine_table.o \
./Src/button.o \
./Src/decode_ft8.o \
./Src/gen_ft8.o \
./Src/log_file.o \
./Src/main.o \
./Src/options.o \
./Src/stm32f7xx_it.o \
./Src/traffic_manager.o 

C_DEPS += \
./Src/ADIF.d \
./Src/Codec_Gains.d \
./Src/DS3231.d \
./Src/Display.d \
./Src/FIR_Coefficients.d \
./Src/Process_DSP.d \
./Src/SDR_Audio.d \
./Src/SiLabs.d \
./Src/Sine_table.d \
./Src/button.d \
./Src/decode_ft8.d \
./Src/gen_ft8.d \
./Src/log_file.d \
./Src/main.d \
./Src/options.d \
./Src/stm32f7xx_it.d \
./Src/traffic_manager.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su Src/%.cyclo: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F746xx -c -I"D:/Temp/DX_FT8_Project/Katy/Drivers/BSP/STM32746G_DISCOVERY" -I"D:/Temp/DX_FT8_Project/Katy/Inc" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/BSP/wm8994" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/BSP/ft5336" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/STM32F7xx_HAL_Driver/Inc" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/CMSIS/Include" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"D:/Temp/DX_FT8_Project/Katy/Utilities" -I"D:/Temp/DX_FT8_Project/Katy/Utilities/Fonts" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/BSP/rk043fn48h" -I"D:/Temp/DX_FT8_Project/Katy/FT8_library" -I"D:/Temp/DX_FT8_Project/Katy/Middlewares/src" -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/ADIF.cyclo ./Src/ADIF.d ./Src/ADIF.o ./Src/ADIF.su ./Src/Codec_Gains.cyclo ./Src/Codec_Gains.d ./Src/Codec_Gains.o ./Src/Codec_Gains.su ./Src/DS3231.cyclo ./Src/DS3231.d ./Src/DS3231.o ./Src/DS3231.su ./Src/Display.cyclo ./Src/Display.d ./Src/Display.o ./Src/Display.su ./Src/FIR_Coefficients.cyclo ./Src/FIR_Coefficients.d ./Src/FIR_Coefficients.o ./Src/FIR_Coefficients.su ./Src/Process_DSP.cyclo ./Src/Process_DSP.d ./Src/Process_DSP.o ./Src/Process_DSP.su ./Src/SDR_Audio.cyclo ./Src/SDR_Audio.d ./Src/SDR_Audio.o ./Src/SDR_Audio.su ./Src/SiLabs.cyclo ./Src/SiLabs.d ./Src/SiLabs.o ./Src/SiLabs.su ./Src/Sine_table.cyclo ./Src/Sine_table.d ./Src/Sine_table.o ./Src/Sine_table.su ./Src/button.cyclo ./Src/button.d ./Src/button.o ./Src/button.su ./Src/decode_ft8.cyclo ./Src/decode_ft8.d ./Src/decode_ft8.o ./Src/decode_ft8.su ./Src/gen_ft8.cyclo ./Src/gen_ft8.d ./Src/gen_ft8.o ./Src/gen_ft8.su ./Src/log_file.cyclo ./Src/log_file.d ./Src/log_file.o ./Src/log_file.su ./Src/main.cyclo ./Src/main.d ./Src/main.o ./Src/main.su ./Src/options.cyclo ./Src/options.d ./Src/options.o ./Src/options.su ./Src/stm32f7xx_it.cyclo ./Src/stm32f7xx_it.d ./Src/stm32f7xx_it.o ./Src/stm32f7xx_it.su ./Src/traffic_manager.cyclo ./Src/traffic_manager.d ./Src/traffic_manager.o ./Src/traffic_manager.su

.PHONY: clean-Src

