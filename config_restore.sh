#!/bin/bash

# restore defconfigs
cp myconfig/BoardConfig.mk project/cfg/BoardConfig_IPC/BoardConfig-SPI_NAND-Buildroot-RV1106_Luckfox_Pico_Pro_Max-IPC.mk
cp -r myconfig/overlay/* project/cfg/BoardConfig_IPC/overlay/overlay-myconfig
cp myconfig/kernel_defconfig sysdrv/source/kernel/arch/arm/configs/luckfox_rv1106_linux_defconfig

rm -rf project/cfg/BoardConfig_IPC/overlay/overlay-luckfox-buildroot-shadow/etc/samba
rm project/cfg/BoardConfig_IPC/overlay/overlay-luckfox-buildroot-init/etc/init.d/S99usb0config
rm sysdrv/tools/board/android-tools/S50usbdevice

cp myconfig/buildroot_defconfig sysdrv/tools/board/buildroot/luckfox_pico_defconfig
cp myconfig/busybox.config sysdrv/tools/board/buildroot/busybox.config
