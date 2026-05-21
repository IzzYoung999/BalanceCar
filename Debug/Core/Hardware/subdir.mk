################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Hardware/IIC.c \
../Core/Hardware/inv_mpu.c \
../Core/Hardware/inv_mpu_dmp_motion_driver.c \
../Core/Hardware/motor.c \
../Core/Hardware/mpu6050.c \
../Core/Hardware/oled.c \
../Core/Hardware/sr04.c 

OBJS += \
./Core/Hardware/IIC.o \
./Core/Hardware/inv_mpu.o \
./Core/Hardware/inv_mpu_dmp_motion_driver.o \
./Core/Hardware/motor.o \
./Core/Hardware/mpu6050.o \
./Core/Hardware/oled.o \
./Core/Hardware/sr04.o 

C_DEPS += \
./Core/Hardware/IIC.d \
./Core/Hardware/inv_mpu.d \
./Core/Hardware/inv_mpu_dmp_motion_driver.d \
./Core/Hardware/motor.d \
./Core/Hardware/mpu6050.d \
./Core/Hardware/oled.d \
./Core/Hardware/sr04.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Hardware/%.o Core/Hardware/%.su Core/Hardware/%.cyclo: ../Core/Hardware/%.c Core/Hardware/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-Hardware

clean-Core-2f-Hardware:
	-$(RM) ./Core/Hardware/IIC.cyclo ./Core/Hardware/IIC.d ./Core/Hardware/IIC.o ./Core/Hardware/IIC.su ./Core/Hardware/inv_mpu.cyclo ./Core/Hardware/inv_mpu.d ./Core/Hardware/inv_mpu.o ./Core/Hardware/inv_mpu.su ./Core/Hardware/inv_mpu_dmp_motion_driver.cyclo ./Core/Hardware/inv_mpu_dmp_motion_driver.d ./Core/Hardware/inv_mpu_dmp_motion_driver.o ./Core/Hardware/inv_mpu_dmp_motion_driver.su ./Core/Hardware/motor.cyclo ./Core/Hardware/motor.d ./Core/Hardware/motor.o ./Core/Hardware/motor.su ./Core/Hardware/mpu6050.cyclo ./Core/Hardware/mpu6050.d ./Core/Hardware/mpu6050.o ./Core/Hardware/mpu6050.su ./Core/Hardware/oled.cyclo ./Core/Hardware/oled.d ./Core/Hardware/oled.o ./Core/Hardware/oled.su ./Core/Hardware/sr04.cyclo ./Core/Hardware/sr04.d ./Core/Hardware/sr04.o ./Core/Hardware/sr04.su

.PHONY: clean-Core-2f-Hardware

