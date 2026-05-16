################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/FatFs/Options/ccsbcs.c \
../Middlewares/FatFs/Options/syscall.c \
../Middlewares/FatFs/Options/unicode.c 

OBJS += \
./Middlewares/FatFs/Options/ccsbcs.o \
./Middlewares/FatFs/Options/syscall.o \
./Middlewares/FatFs/Options/unicode.o 

C_DEPS += \
./Middlewares/FatFs/Options/ccsbcs.d \
./Middlewares/FatFs/Options/syscall.d \
./Middlewares/FatFs/Options/unicode.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/FatFs/Options/%.o Middlewares/FatFs/Options/%.su Middlewares/FatFs/Options/%.cyclo: ../Middlewares/FatFs/Options/%.c Middlewares/FatFs/Options/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/P76144118/STM32CubeIDE/workspace_1.17.0/audio_test/Drivers/BSP/STM32F4-Discovery" -I"C:/Users/P76144118/STM32CubeIDE/workspace_1.17.0/audio_test/Middlewares/STM32_Audio/Addons/PDM/Inc" -I"C:/Users/P76144118/STM32CubeIDE/workspace_1.17.0/audio_test/Middlewares/STM32_USBD_Library/Core/Inc" -I"C:/Users/P76144118/STM32CubeIDE/workspace_1.17.0/audio_test/Middlewares/STM32_USBH_Library/Class/MSC/Inc" -I"C:/Users/P76144118/STM32CubeIDE/workspace_1.17.0/audio_test/Middlewares/STM32_USBH_Library/Core/Inc" -I"C:/Users/P76144118/STM32CubeIDE/workspace_1.17.0/audio_test/Middlewares/FatFs/Core/Inc" -I"C:/Users/P76144118/STM32CubeIDE/workspace_1.17.0/audio_test/Middlewares/FatFs/Drivers/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-FatFs-2f-Options

clean-Middlewares-2f-FatFs-2f-Options:
	-$(RM) ./Middlewares/FatFs/Options/ccsbcs.cyclo ./Middlewares/FatFs/Options/ccsbcs.d ./Middlewares/FatFs/Options/ccsbcs.o ./Middlewares/FatFs/Options/ccsbcs.su ./Middlewares/FatFs/Options/syscall.cyclo ./Middlewares/FatFs/Options/syscall.d ./Middlewares/FatFs/Options/syscall.o ./Middlewares/FatFs/Options/syscall.su ./Middlewares/FatFs/Options/unicode.cyclo ./Middlewares/FatFs/Options/unicode.d ./Middlewares/FatFs/Options/unicode.o ./Middlewares/FatFs/Options/unicode.su

.PHONY: clean-Middlewares-2f-FatFs-2f-Options

