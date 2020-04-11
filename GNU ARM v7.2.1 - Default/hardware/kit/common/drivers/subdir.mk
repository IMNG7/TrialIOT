################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../hardware/kit/common/drivers/display.c \
../hardware/kit/common/drivers/displayls013b7dh03.c \
../hardware/kit/common/drivers/displaypalemlib.c \
../hardware/kit/common/drivers/i2cspm.c \
../hardware/kit/common/drivers/mx25flash_spi.c \
../hardware/kit/common/drivers/retargetio.c \
../hardware/kit/common/drivers/retargetserial.c \
../hardware/kit/common/drivers/udelay.c 

OBJS += \
./hardware/kit/common/drivers/display.o \
./hardware/kit/common/drivers/displayls013b7dh03.o \
./hardware/kit/common/drivers/displaypalemlib.o \
./hardware/kit/common/drivers/i2cspm.o \
./hardware/kit/common/drivers/mx25flash_spi.o \
./hardware/kit/common/drivers/retargetio.o \
./hardware/kit/common/drivers/retargetserial.o \
./hardware/kit/common/drivers/udelay.o 

C_DEPS += \
./hardware/kit/common/drivers/display.d \
./hardware/kit/common/drivers/displayls013b7dh03.d \
./hardware/kit/common/drivers/displaypalemlib.d \
./hardware/kit/common/drivers/i2cspm.d \
./hardware/kit/common/drivers/mx25flash_spi.d \
./hardware/kit/common/drivers/retargetio.d \
./hardware/kit/common/drivers/retargetserial.d \
./hardware/kit/common/drivers/udelay.d 


# Each subdirectory must supply rules for building sources it contributes
hardware/kit/common/drivers/display.o: ../hardware/kit/common/drivers/display.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0x1700' '-DENABLE_LOGGING=1' '-DINCLUDE_LOGGING=1' '-DNVM3_DEFAULT_MAX_OBJECT_SIZE=512' '-D__STACK_SIZE=0x1000' '-DHAL_CONFIG=1' '-DMESH_LIB_NATIVE=1' '-DNVM3_DEFAULT_NVM_SIZE=24576' '-DEFR32BG13P632F512GM48=1' -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\Device\SiliconLabs\EFR32BG13P\Include" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\dmd\ssd2119" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\common" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emlib\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\Device\SiliconLabs\EFR32BG13P\Source\GCC" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\plugin\coexistence\common" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\inc\soc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\common\halconfig" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\glib" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\CMSIS\Include" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\sleep\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\common\drivers" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\ble_stack\inc\soc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\common\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\service\sleeptimer\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emlib\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\uartdrv\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\sleep\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\inc\common" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\gpiointerrupt\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\common\bsp" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\nvm3\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\ble_stack\src\soc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\plugin\coexistence\hal\efr32" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\dmd" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\nvm3\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\chip\efr32\efr32xg1x" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\common\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\service\sleeptimer\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\service\sleeptimer\config" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\EFR32BG13_BRD4104A\config" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\gpiointerrupt\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\protocol\ieee802154" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\dmd\display" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\protocol\ble" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\halconfig\inc\hal-config" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\bootloader\api" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\Device\SiliconLabs\EFR32BG13P\Source" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\plugin" -Os -fno-builtin -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"hardware/kit/common/drivers/display.d" -MT"hardware/kit/common/drivers/display.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

hardware/kit/common/drivers/displayls013b7dh03.o: ../hardware/kit/common/drivers/displayls013b7dh03.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0x1700' '-DENABLE_LOGGING=1' '-DINCLUDE_LOGGING=1' '-DNVM3_DEFAULT_MAX_OBJECT_SIZE=512' '-D__STACK_SIZE=0x1000' '-DHAL_CONFIG=1' '-DMESH_LIB_NATIVE=1' '-DNVM3_DEFAULT_NVM_SIZE=24576' '-DEFR32BG13P632F512GM48=1' -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\Device\SiliconLabs\EFR32BG13P\Include" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\dmd\ssd2119" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\common" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emlib\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\Device\SiliconLabs\EFR32BG13P\Source\GCC" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\plugin\coexistence\common" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\inc\soc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\common\halconfig" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\glib" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\CMSIS\Include" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\sleep\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\common\drivers" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\ble_stack\inc\soc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\common\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\service\sleeptimer\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emlib\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\uartdrv\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\sleep\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\inc\common" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\gpiointerrupt\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\common\bsp" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\nvm3\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\ble_stack\src\soc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\plugin\coexistence\hal\efr32" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\dmd" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\nvm3\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\chip\efr32\efr32xg1x" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\common\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\service\sleeptimer\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\service\sleeptimer\config" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\EFR32BG13_BRD4104A\config" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\gpiointerrupt\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\protocol\ieee802154" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\dmd\display" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\protocol\ble" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\halconfig\inc\hal-config" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\bootloader\api" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\Device\SiliconLabs\EFR32BG13P\Source" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\plugin" -Os -fno-builtin -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"hardware/kit/common/drivers/displayls013b7dh03.d" -MT"hardware/kit/common/drivers/displayls013b7dh03.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

hardware/kit/common/drivers/displaypalemlib.o: ../hardware/kit/common/drivers/displaypalemlib.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0x1700' '-DENABLE_LOGGING=1' '-DINCLUDE_LOGGING=1' '-DNVM3_DEFAULT_MAX_OBJECT_SIZE=512' '-D__STACK_SIZE=0x1000' '-DHAL_CONFIG=1' '-DMESH_LIB_NATIVE=1' '-DNVM3_DEFAULT_NVM_SIZE=24576' '-DEFR32BG13P632F512GM48=1' -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\Device\SiliconLabs\EFR32BG13P\Include" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\dmd\ssd2119" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\common" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emlib\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\Device\SiliconLabs\EFR32BG13P\Source\GCC" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\plugin\coexistence\common" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\inc\soc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\common\halconfig" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\glib" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\CMSIS\Include" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\sleep\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\common\drivers" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\ble_stack\inc\soc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\common\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\service\sleeptimer\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emlib\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\uartdrv\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\sleep\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\inc\common" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\gpiointerrupt\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\common\bsp" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\nvm3\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\ble_stack\src\soc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\plugin\coexistence\hal\efr32" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\dmd" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\nvm3\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\chip\efr32\efr32xg1x" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\common\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\service\sleeptimer\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\service\sleeptimer\config" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\EFR32BG13_BRD4104A\config" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\gpiointerrupt\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\protocol\ieee802154" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\dmd\display" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\protocol\ble" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\halconfig\inc\hal-config" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\bootloader\api" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\Device\SiliconLabs\EFR32BG13P\Source" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\plugin" -Os -fno-builtin -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"hardware/kit/common/drivers/displaypalemlib.d" -MT"hardware/kit/common/drivers/displaypalemlib.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

hardware/kit/common/drivers/i2cspm.o: ../hardware/kit/common/drivers/i2cspm.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0x1700' '-DENABLE_LOGGING=1' '-DINCLUDE_LOGGING=1' '-DNVM3_DEFAULT_MAX_OBJECT_SIZE=512' '-D__STACK_SIZE=0x1000' '-DHAL_CONFIG=1' '-DMESH_LIB_NATIVE=1' '-DNVM3_DEFAULT_NVM_SIZE=24576' '-DEFR32BG13P632F512GM48=1' -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\Device\SiliconLabs\EFR32BG13P\Include" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\dmd\ssd2119" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\common" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emlib\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\Device\SiliconLabs\EFR32BG13P\Source\GCC" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\plugin\coexistence\common" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\inc\soc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\common\halconfig" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\glib" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\CMSIS\Include" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\sleep\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\common\drivers" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\ble_stack\inc\soc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\common\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\service\sleeptimer\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emlib\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\uartdrv\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\sleep\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\inc\common" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\gpiointerrupt\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\common\bsp" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\nvm3\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\ble_stack\src\soc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\plugin\coexistence\hal\efr32" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\dmd" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\nvm3\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\chip\efr32\efr32xg1x" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\common\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\service\sleeptimer\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\service\sleeptimer\config" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\EFR32BG13_BRD4104A\config" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\gpiointerrupt\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\protocol\ieee802154" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\dmd\display" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\protocol\ble" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\halconfig\inc\hal-config" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\bootloader\api" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\Device\SiliconLabs\EFR32BG13P\Source" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\plugin" -Os -fno-builtin -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"hardware/kit/common/drivers/i2cspm.d" -MT"hardware/kit/common/drivers/i2cspm.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

hardware/kit/common/drivers/mx25flash_spi.o: ../hardware/kit/common/drivers/mx25flash_spi.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0x1700' '-DENABLE_LOGGING=1' '-DINCLUDE_LOGGING=1' '-DNVM3_DEFAULT_MAX_OBJECT_SIZE=512' '-D__STACK_SIZE=0x1000' '-DHAL_CONFIG=1' '-DMESH_LIB_NATIVE=1' '-DNVM3_DEFAULT_NVM_SIZE=24576' '-DEFR32BG13P632F512GM48=1' -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\Device\SiliconLabs\EFR32BG13P\Include" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\dmd\ssd2119" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\common" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emlib\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\Device\SiliconLabs\EFR32BG13P\Source\GCC" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\plugin\coexistence\common" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\inc\soc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\common\halconfig" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\glib" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\CMSIS\Include" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\sleep\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\common\drivers" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\ble_stack\inc\soc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\common\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\service\sleeptimer\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emlib\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\uartdrv\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\sleep\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\inc\common" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\gpiointerrupt\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\common\bsp" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\nvm3\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\ble_stack\src\soc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\plugin\coexistence\hal\efr32" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\dmd" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\nvm3\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\chip\efr32\efr32xg1x" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\common\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\service\sleeptimer\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\service\sleeptimer\config" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\EFR32BG13_BRD4104A\config" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\gpiointerrupt\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\protocol\ieee802154" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\dmd\display" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\protocol\ble" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\halconfig\inc\hal-config" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\bootloader\api" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\Device\SiliconLabs\EFR32BG13P\Source" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\plugin" -Os -fno-builtin -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"hardware/kit/common/drivers/mx25flash_spi.d" -MT"hardware/kit/common/drivers/mx25flash_spi.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

hardware/kit/common/drivers/retargetio.o: ../hardware/kit/common/drivers/retargetio.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0x1700' '-DENABLE_LOGGING=1' '-DINCLUDE_LOGGING=1' '-DNVM3_DEFAULT_MAX_OBJECT_SIZE=512' '-D__STACK_SIZE=0x1000' '-DHAL_CONFIG=1' '-DMESH_LIB_NATIVE=1' '-DNVM3_DEFAULT_NVM_SIZE=24576' '-DEFR32BG13P632F512GM48=1' -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\Device\SiliconLabs\EFR32BG13P\Include" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\dmd\ssd2119" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\common" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emlib\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\Device\SiliconLabs\EFR32BG13P\Source\GCC" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\plugin\coexistence\common" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\inc\soc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\common\halconfig" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\glib" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\CMSIS\Include" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\sleep\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\common\drivers" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\ble_stack\inc\soc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\common\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\service\sleeptimer\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emlib\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\uartdrv\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\sleep\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\inc\common" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\gpiointerrupt\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\common\bsp" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\nvm3\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\ble_stack\src\soc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\plugin\coexistence\hal\efr32" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\dmd" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\nvm3\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\chip\efr32\efr32xg1x" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\common\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\service\sleeptimer\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\service\sleeptimer\config" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\EFR32BG13_BRD4104A\config" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\gpiointerrupt\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\protocol\ieee802154" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\dmd\display" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\protocol\ble" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\halconfig\inc\hal-config" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\bootloader\api" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\Device\SiliconLabs\EFR32BG13P\Source" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\plugin" -Os -fno-builtin -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"hardware/kit/common/drivers/retargetio.d" -MT"hardware/kit/common/drivers/retargetio.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

hardware/kit/common/drivers/retargetserial.o: ../hardware/kit/common/drivers/retargetserial.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0x1700' '-DENABLE_LOGGING=1' '-DINCLUDE_LOGGING=1' '-DNVM3_DEFAULT_MAX_OBJECT_SIZE=512' '-D__STACK_SIZE=0x1000' '-DHAL_CONFIG=1' '-DMESH_LIB_NATIVE=1' '-DNVM3_DEFAULT_NVM_SIZE=24576' '-DEFR32BG13P632F512GM48=1' -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\Device\SiliconLabs\EFR32BG13P\Include" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\dmd\ssd2119" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\common" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emlib\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\Device\SiliconLabs\EFR32BG13P\Source\GCC" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\plugin\coexistence\common" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\inc\soc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\common\halconfig" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\glib" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\CMSIS\Include" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\sleep\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\common\drivers" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\ble_stack\inc\soc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\common\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\service\sleeptimer\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emlib\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\uartdrv\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\sleep\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\inc\common" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\gpiointerrupt\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\common\bsp" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\nvm3\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\ble_stack\src\soc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\plugin\coexistence\hal\efr32" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\dmd" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\nvm3\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\chip\efr32\efr32xg1x" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\common\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\service\sleeptimer\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\service\sleeptimer\config" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\EFR32BG13_BRD4104A\config" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\gpiointerrupt\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\protocol\ieee802154" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\dmd\display" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\protocol\ble" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\halconfig\inc\hal-config" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\bootloader\api" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\Device\SiliconLabs\EFR32BG13P\Source" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\plugin" -Os -fno-builtin -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"hardware/kit/common/drivers/retargetserial.d" -MT"hardware/kit/common/drivers/retargetserial.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

hardware/kit/common/drivers/udelay.o: ../hardware/kit/common/drivers/udelay.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0x1700' '-DENABLE_LOGGING=1' '-DINCLUDE_LOGGING=1' '-DNVM3_DEFAULT_MAX_OBJECT_SIZE=512' '-D__STACK_SIZE=0x1000' '-DHAL_CONFIG=1' '-DMESH_LIB_NATIVE=1' '-DNVM3_DEFAULT_NVM_SIZE=24576' '-DEFR32BG13P632F512GM48=1' -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\Device\SiliconLabs\EFR32BG13P\Include" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\dmd\ssd2119" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\common" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emlib\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\Device\SiliconLabs\EFR32BG13P\Source\GCC" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\plugin\coexistence\common" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\inc\soc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\common\halconfig" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\glib" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\CMSIS\Include" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\sleep\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\common\drivers" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\ble_stack\inc\soc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\common\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\service\sleeptimer\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emlib\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\uartdrv\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\sleep\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\bt_mesh\inc\common" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\gpiointerrupt\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\common\bsp" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\nvm3\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\protocol\bluetooth\ble_stack\src\soc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\plugin\coexistence\hal\efr32" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\dmd" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\nvm3\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\chip\efr32\efr32xg1x" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\common\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\service\sleeptimer\inc" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\service\sleeptimer\config" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\hardware\kit\EFR32BG13_BRD4104A\config" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\emdrv\gpiointerrupt\src" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\protocol\ieee802154" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\middleware\glib\dmd\display" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\protocol\ble" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\halconfig\inc\hal-config" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\bootloader\api" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\Device\SiliconLabs\EFR32BG13P\Source" -I"D:\COLLEGE MATERIAL\IOT\Assignment\assignment10-IMNG7\platform\radio\rail_lib\plugin" -Os -fno-builtin -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"hardware/kit/common/drivers/udelay.d" -MT"hardware/kit/common/drivers/udelay.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


