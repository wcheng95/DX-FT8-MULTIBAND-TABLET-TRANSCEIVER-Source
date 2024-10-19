################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FT8_library/constants.c \
../FT8_library/decode.c \
../FT8_library/encode.c \
../FT8_library/ldpc.c \
../FT8_library/pack.c \
../FT8_library/text.c \
../FT8_library/unpack.c 

OBJS += \
./FT8_library/constants.o \
./FT8_library/decode.o \
./FT8_library/encode.o \
./FT8_library/ldpc.o \
./FT8_library/pack.o \
./FT8_library/text.o \
./FT8_library/unpack.o 

C_DEPS += \
./FT8_library/constants.d \
./FT8_library/decode.d \
./FT8_library/encode.d \
./FT8_library/ldpc.d \
./FT8_library/pack.d \
./FT8_library/text.d \
./FT8_library/unpack.d 


# Each subdirectory must supply rules for building sources it contributes
FT8_library/%.o FT8_library/%.su FT8_library/%.cyclo: ../FT8_library/%.c FT8_library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F746xx -c -I"D:/Temp/DX_FT8_Project/Katy/Drivers/BSP/STM32746G_DISCOVERY" -I"D:/Temp/DX_FT8_Project/Katy/Inc" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/BSP/wm8994" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/BSP/ft5336" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/STM32F7xx_HAL_Driver/Inc" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/CMSIS/Include" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"D:/Temp/DX_FT8_Project/Katy/Utilities" -I"D:/Temp/DX_FT8_Project/Katy/Utilities/Fonts" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/BSP/rk043fn48h" -I"D:/Temp/DX_FT8_Project/Katy/FT8_library" -I"D:/Temp/DX_FT8_Project/Katy/Middlewares/src" -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FT8_library

clean-FT8_library:
	-$(RM) ./FT8_library/constants.cyclo ./FT8_library/constants.d ./FT8_library/constants.o ./FT8_library/constants.su ./FT8_library/decode.cyclo ./FT8_library/decode.d ./FT8_library/decode.o ./FT8_library/decode.su ./FT8_library/encode.cyclo ./FT8_library/encode.d ./FT8_library/encode.o ./FT8_library/encode.su ./FT8_library/ldpc.cyclo ./FT8_library/ldpc.d ./FT8_library/ldpc.o ./FT8_library/ldpc.su ./FT8_library/pack.cyclo ./FT8_library/pack.d ./FT8_library/pack.o ./FT8_library/pack.su ./FT8_library/text.cyclo ./FT8_library/text.d ./FT8_library/text.o ./FT8_library/text.su ./FT8_library/unpack.cyclo ./FT8_library/unpack.d ./FT8_library/unpack.o ./FT8_library/unpack.su

.PHONY: clean-FT8_library

