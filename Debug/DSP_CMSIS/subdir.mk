################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../DSP_CMSIS/arm_bitreversal.c \
../DSP_CMSIS/arm_cfft_q15.c \
../DSP_CMSIS/arm_cfft_radix2_init_q15.c \
../DSP_CMSIS/arm_cfft_radix2_q15.c \
../DSP_CMSIS/arm_cfft_radix4_init_q15.c \
../DSP_CMSIS/arm_cfft_radix4_q15.c \
../DSP_CMSIS/arm_cmplx_mag_squared_q15.c \
../DSP_CMSIS/arm_common_tables.c \
../DSP_CMSIS/arm_const_structs.c \
../DSP_CMSIS/arm_fir_decimate_q15.c \
../DSP_CMSIS/arm_fir_q15.c \
../DSP_CMSIS/arm_rfft_init_q15.c \
../DSP_CMSIS/arm_rfft_q15.c \
../DSP_CMSIS/arm_scale_q15.c \
../DSP_CMSIS/arm_shift_q15.c 

S_UPPER_SRCS += \
../DSP_CMSIS/arm_bitreversal2.S 

OBJS += \
./DSP_CMSIS/arm_bitreversal.o \
./DSP_CMSIS/arm_bitreversal2.o \
./DSP_CMSIS/arm_cfft_q15.o \
./DSP_CMSIS/arm_cfft_radix2_init_q15.o \
./DSP_CMSIS/arm_cfft_radix2_q15.o \
./DSP_CMSIS/arm_cfft_radix4_init_q15.o \
./DSP_CMSIS/arm_cfft_radix4_q15.o \
./DSP_CMSIS/arm_cmplx_mag_squared_q15.o \
./DSP_CMSIS/arm_common_tables.o \
./DSP_CMSIS/arm_const_structs.o \
./DSP_CMSIS/arm_fir_decimate_q15.o \
./DSP_CMSIS/arm_fir_q15.o \
./DSP_CMSIS/arm_rfft_init_q15.o \
./DSP_CMSIS/arm_rfft_q15.o \
./DSP_CMSIS/arm_scale_q15.o \
./DSP_CMSIS/arm_shift_q15.o 

S_UPPER_DEPS += \
./DSP_CMSIS/arm_bitreversal2.d 

C_DEPS += \
./DSP_CMSIS/arm_bitreversal.d \
./DSP_CMSIS/arm_cfft_q15.d \
./DSP_CMSIS/arm_cfft_radix2_init_q15.d \
./DSP_CMSIS/arm_cfft_radix2_q15.d \
./DSP_CMSIS/arm_cfft_radix4_init_q15.d \
./DSP_CMSIS/arm_cfft_radix4_q15.d \
./DSP_CMSIS/arm_cmplx_mag_squared_q15.d \
./DSP_CMSIS/arm_common_tables.d \
./DSP_CMSIS/arm_const_structs.d \
./DSP_CMSIS/arm_fir_decimate_q15.d \
./DSP_CMSIS/arm_fir_q15.d \
./DSP_CMSIS/arm_rfft_init_q15.d \
./DSP_CMSIS/arm_rfft_q15.d \
./DSP_CMSIS/arm_scale_q15.d \
./DSP_CMSIS/arm_shift_q15.d 


# Each subdirectory must supply rules for building sources it contributes
DSP_CMSIS/%.o DSP_CMSIS/%.su DSP_CMSIS/%.cyclo: ../DSP_CMSIS/%.c DSP_CMSIS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F746xx -c -I"D:/Temp/DX_FT8_Project/Katy/Drivers/BSP/STM32746G_DISCOVERY" -I"D:/Temp/DX_FT8_Project/Katy/Inc" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/BSP/wm8994" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/BSP/ft5336" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/STM32F7xx_HAL_Driver/Inc" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/CMSIS/Include" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"D:/Temp/DX_FT8_Project/Katy/Utilities" -I"D:/Temp/DX_FT8_Project/Katy/Utilities/Fonts" -I"D:/Temp/DX_FT8_Project/Katy/Drivers/BSP/rk043fn48h" -I"D:/Temp/DX_FT8_Project/Katy/FT8_library" -I"D:/Temp/DX_FT8_Project/Katy/Middlewares/src" -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
DSP_CMSIS/%.o: ../DSP_CMSIS/%.S DSP_CMSIS/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-DSP_CMSIS

clean-DSP_CMSIS:
	-$(RM) ./DSP_CMSIS/arm_bitreversal.cyclo ./DSP_CMSIS/arm_bitreversal.d ./DSP_CMSIS/arm_bitreversal.o ./DSP_CMSIS/arm_bitreversal.su ./DSP_CMSIS/arm_bitreversal2.d ./DSP_CMSIS/arm_bitreversal2.o ./DSP_CMSIS/arm_cfft_q15.cyclo ./DSP_CMSIS/arm_cfft_q15.d ./DSP_CMSIS/arm_cfft_q15.o ./DSP_CMSIS/arm_cfft_q15.su ./DSP_CMSIS/arm_cfft_radix2_init_q15.cyclo ./DSP_CMSIS/arm_cfft_radix2_init_q15.d ./DSP_CMSIS/arm_cfft_radix2_init_q15.o ./DSP_CMSIS/arm_cfft_radix2_init_q15.su ./DSP_CMSIS/arm_cfft_radix2_q15.cyclo ./DSP_CMSIS/arm_cfft_radix2_q15.d ./DSP_CMSIS/arm_cfft_radix2_q15.o ./DSP_CMSIS/arm_cfft_radix2_q15.su ./DSP_CMSIS/arm_cfft_radix4_init_q15.cyclo ./DSP_CMSIS/arm_cfft_radix4_init_q15.d ./DSP_CMSIS/arm_cfft_radix4_init_q15.o ./DSP_CMSIS/arm_cfft_radix4_init_q15.su ./DSP_CMSIS/arm_cfft_radix4_q15.cyclo ./DSP_CMSIS/arm_cfft_radix4_q15.d ./DSP_CMSIS/arm_cfft_radix4_q15.o ./DSP_CMSIS/arm_cfft_radix4_q15.su ./DSP_CMSIS/arm_cmplx_mag_squared_q15.cyclo ./DSP_CMSIS/arm_cmplx_mag_squared_q15.d ./DSP_CMSIS/arm_cmplx_mag_squared_q15.o ./DSP_CMSIS/arm_cmplx_mag_squared_q15.su ./DSP_CMSIS/arm_common_tables.cyclo ./DSP_CMSIS/arm_common_tables.d ./DSP_CMSIS/arm_common_tables.o ./DSP_CMSIS/arm_common_tables.su ./DSP_CMSIS/arm_const_structs.cyclo ./DSP_CMSIS/arm_const_structs.d ./DSP_CMSIS/arm_const_structs.o ./DSP_CMSIS/arm_const_structs.su ./DSP_CMSIS/arm_fir_decimate_q15.cyclo ./DSP_CMSIS/arm_fir_decimate_q15.d ./DSP_CMSIS/arm_fir_decimate_q15.o ./DSP_CMSIS/arm_fir_decimate_q15.su ./DSP_CMSIS/arm_fir_q15.cyclo ./DSP_CMSIS/arm_fir_q15.d ./DSP_CMSIS/arm_fir_q15.o ./DSP_CMSIS/arm_fir_q15.su ./DSP_CMSIS/arm_rfft_init_q15.cyclo ./DSP_CMSIS/arm_rfft_init_q15.d ./DSP_CMSIS/arm_rfft_init_q15.o ./DSP_CMSIS/arm_rfft_init_q15.su ./DSP_CMSIS/arm_rfft_q15.cyclo ./DSP_CMSIS/arm_rfft_q15.d ./DSP_CMSIS/arm_rfft_q15.o ./DSP_CMSIS/arm_rfft_q15.su ./DSP_CMSIS/arm_scale_q15.cyclo ./DSP_CMSIS/arm_scale_q15.d ./DSP_CMSIS/arm_scale_q15.o ./DSP_CMSIS/arm_scale_q15.su ./DSP_CMSIS/arm_shift_q15.cyclo ./DSP_CMSIS/arm_shift_q15.d ./DSP_CMSIS/arm_shift_q15.o ./DSP_CMSIS/arm_shift_q15.su

.PHONY: clean-DSP_CMSIS

