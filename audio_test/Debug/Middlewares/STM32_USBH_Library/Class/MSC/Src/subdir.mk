################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/STM32_USBH_Library/Class/MSC/Src/usbh_msc.c \
../Middlewares/STM32_USBH_Library/Class/MSC/Src/usbh_msc_bot.c \
../Middlewares/STM32_USBH_Library/Class/MSC/Src/usbh_msc_scsi.c 

OBJS += \
./Middlewares/STM32_USBH_Library/Class/MSC/Src/usbh_msc.o \
./Middlewares/STM32_USBH_Library/Class/MSC/Src/usbh_msc_bot.o \
./Middlewares/STM32_USBH_Library/Class/MSC/Src/usbh_msc_scsi.o 

C_DEPS += \
./Middlewares/STM32_USBH_Library/Class/MSC/Src/usbh_msc.d \
./Middlewares/STM32_USBH_Library/Class/MSC/Src/usbh_msc_bot.d \
./Middlewares/STM32_USBH_Library/Class/MSC/Src/usbh_msc_scsi.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/STM32_USBH_Library/Class/MSC/Src/%.o Middlewares/STM32_USBH_Library/Class/MSC/Src/%.su Middlewares/STM32_USBH_Library/Class/MSC/Src/%.cyclo: ../Middlewares/STM32_USBH_Library/Class/MSC/Src/%.c Middlewares/STM32_USBH_Library/Class/MSC/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/P76144118/STM32CubeIDE/workspace_1.17.0/audio_test/Drivers/BSP/STM32F4-Discovery" -I"C:/Users/P76144118/STM32CubeIDE/workspace_1.17.0/audio_test/Middlewares/STM32_Audio/Addons/PDM/Inc" -I"C:/Users/P76144118/STM32CubeIDE/workspace_1.17.0/audio_test/Middlewares/STM32_USBD_Library/Core/Inc" -I"C:/Users/P76144118/STM32CubeIDE/workspace_1.17.0/audio_test/Middlewares/STM32_USBH_Library/Class/MSC/Inc" -I"C:/Users/P76144118/STM32CubeIDE/workspace_1.17.0/audio_test/Middlewares/STM32_USBH_Library/Core/Inc" -I"C:/Users/P76144118/STM32CubeIDE/workspace_1.17.0/audio_test/Middlewares/FatFs/Core/Inc" -I"C:/Users/P76144118/STM32CubeIDE/workspace_1.17.0/audio_test/Middlewares/FatFs/Drivers/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-STM32_USBH_Library-2f-Class-2f-MSC-2f-Src

clean-Middlewares-2f-STM32_USBH_Library-2f-Class-2f-MSC-2f-Src:
	-$(RM) ./Middlewares/STM32_USBH_Library/Class/MSC/Src/usbh_msc.cyclo ./Middlewares/STM32_USBH_Library/Class/MSC/Src/usbh_msc.d ./Middlewares/STM32_USBH_Library/Class/MSC/Src/usbh_msc.o ./Middlewares/STM32_USBH_Library/Class/MSC/Src/usbh_msc.su ./Middlewares/STM32_USBH_Library/Class/MSC/Src/usbh_msc_bot.cyclo ./Middlewares/STM32_USBH_Library/Class/MSC/Src/usbh_msc_bot.d ./Middlewares/STM32_USBH_Library/Class/MSC/Src/usbh_msc_bot.o ./Middlewares/STM32_USBH_Library/Class/MSC/Src/usbh_msc_bot.su ./Middlewares/STM32_USBH_Library/Class/MSC/Src/usbh_msc_scsi.cyclo ./Middlewares/STM32_USBH_Library/Class/MSC/Src/usbh_msc_scsi.d ./Middlewares/STM32_USBH_Library/Class/MSC/Src/usbh_msc_scsi.o ./Middlewares/STM32_USBH_Library/Class/MSC/Src/usbh_msc_scsi.su

.PHONY: clean-Middlewares-2f-STM32_USBH_Library-2f-Class-2f-MSC-2f-Src

