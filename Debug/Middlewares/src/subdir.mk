################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/src/ccsbcs.c \
../Middlewares/src/diskio.c \
../Middlewares/src/ff.c \
../Middlewares/src/ff_gen_drv.c \
../Middlewares/src/sd_diskio.c \
../Middlewares/src/sdram_diskio.c \
../Middlewares/src/unicode.c 

OBJS += \
./Middlewares/src/ccsbcs.o \
./Middlewares/src/diskio.o \
./Middlewares/src/ff.o \
./Middlewares/src/ff_gen_drv.o \
./Middlewares/src/sd_diskio.o \
./Middlewares/src/sdram_diskio.o \
./Middlewares/src/unicode.o 

C_DEPS += \
./Middlewares/src/ccsbcs.d \
./Middlewares/src/diskio.d \
./Middlewares/src/ff.d \
./Middlewares/src/ff_gen_drv.d \
./Middlewares/src/sd_diskio.d \
./Middlewares/src/sdram_diskio.d \
./Middlewares/src/unicode.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/src/%.o Middlewares/src/%.su Middlewares/src/%.cyclo: ../Middlewares/src/%.c Middlewares/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F746xx -c -I"D:/Temp/DX_FT8_Project/Katy/Drivers/BSP/STM32746G_DISCOVERY" -I"D:/Temp/DX_FT8_Project/Katy/Inc" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/BSP/wm8994" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/BSP/ft5336" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/STM32F7xx_HAL_Driver/Inc" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/CMSIS/Include" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"D:/Temp/DX_FT8_Project/Katy/Utilities" -I"D:/Temp/DX_FT8_Project/Katy/Utilities/Fonts" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/BSP/rk043fn48h" -I"D:/Temp/DX_FT8_Project/Katy/FT8_library" -I"D:/Temp/DX_FT8_Project/Katy/Middlewares/src" -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-src

clean-Middlewares-2f-src:
	-$(RM) ./Middlewares/src/ccsbcs.cyclo ./Middlewares/src/ccsbcs.d ./Middlewares/src/ccsbcs.o ./Middlewares/src/ccsbcs.su ./Middlewares/src/diskio.cyclo ./Middlewares/src/diskio.d ./Middlewares/src/diskio.o ./Middlewares/src/diskio.su ./Middlewares/src/ff.cyclo ./Middlewares/src/ff.d ./Middlewares/src/ff.o ./Middlewares/src/ff.su ./Middlewares/src/ff_gen_drv.cyclo ./Middlewares/src/ff_gen_drv.d ./Middlewares/src/ff_gen_drv.o ./Middlewares/src/ff_gen_drv.su ./Middlewares/src/sd_diskio.cyclo ./Middlewares/src/sd_diskio.d ./Middlewares/src/sd_diskio.o ./Middlewares/src/sd_diskio.su ./Middlewares/src/sdram_diskio.cyclo ./Middlewares/src/sdram_diskio.d ./Middlewares/src/sdram_diskio.o ./Middlewares/src/sdram_diskio.su ./Middlewares/src/unicode.cyclo ./Middlewares/src/unicode.d ./Middlewares/src/unicode.o ./Middlewares/src/unicode.su

.PHONY: clean-Middlewares-2f-src

