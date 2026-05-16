################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/FatFs/Core/Src/diskio.c \
../Middlewares/FatFs/Core/Src/ff.c \
../Middlewares/FatFs/Core/Src/ff_gen_drv.c 

OBJS += \
./Middlewares/FatFs/Core/Src/diskio.o \
./Middlewares/FatFs/Core/Src/ff.o \
./Middlewares/FatFs/Core/Src/ff_gen_drv.o 

C_DEPS += \
./Middlewares/FatFs/Core/Src/diskio.d \
./Middlewares/FatFs/Core/Src/ff.d \
./Middlewares/FatFs/Core/Src/ff_gen_drv.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/FatFs/Core/Src/%.o Middlewares/FatFs/Core/Src/%.su Middlewares/FatFs/Core/Src/%.cyclo: ../Middlewares/FatFs/Core/Src/%.c Middlewares/FatFs/Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/P76144118/STM32CubeIDE/workspace_1.17.0/audio_test/Drivers/BSP/STM32F4-Discovery" -I"C:/Users/P76144118/STM32CubeIDE/workspace_1.17.0/audio_test/Middlewares/STM32_Audio/Addons/PDM/Inc" -I"C:/Users/P76144118/STM32CubeIDE/workspace_1.17.0/audio_test/Middlewares/STM32_USBD_Library/Core/Inc" -I"C:/Users/P76144118/STM32CubeIDE/workspace_1.17.0/audio_test/Middlewares/STM32_USBH_Library/Class/MSC/Inc" -I"C:/Users/P76144118/STM32CubeIDE/workspace_1.17.0/audio_test/Middlewares/STM32_USBH_Library/Core/Inc" -I"C:/Users/P76144118/STM32CubeIDE/workspace_1.17.0/audio_test/Middlewares/FatFs/Core/Inc" -I"C:/Users/P76144118/STM32CubeIDE/workspace_1.17.0/audio_test/Middlewares/FatFs/Drivers/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-FatFs-2f-Core-2f-Src

clean-Middlewares-2f-FatFs-2f-Core-2f-Src:
	-$(RM) ./Middlewares/FatFs/Core/Src/diskio.cyclo ./Middlewares/FatFs/Core/Src/diskio.d ./Middlewares/FatFs/Core/Src/diskio.o ./Middlewares/FatFs/Core/Src/diskio.su ./Middlewares/FatFs/Core/Src/ff.cyclo ./Middlewares/FatFs/Core/Src/ff.d ./Middlewares/FatFs/Core/Src/ff.o ./Middlewares/FatFs/Core/Src/ff.su ./Middlewares/FatFs/Core/Src/ff_gen_drv.cyclo ./Middlewares/FatFs/Core/Src/ff_gen_drv.d ./Middlewares/FatFs/Core/Src/ff_gen_drv.o ./Middlewares/FatFs/Core/Src/ff_gen_drv.su

.PHONY: clean-Middlewares-2f-FatFs-2f-Core-2f-Src

