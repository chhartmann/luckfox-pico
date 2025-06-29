#!/bin/bash

# restore defconfigs
cp myconfig/buildroot_defconfig sysdrv/source/buildroot/buildroot-2023.02.6/configs/luckfox_pico_defconfig
cp myconfig/kernel_defconfig sysdrv/source/kernel/arch/arm/configs/luckfox_rv1106_linux_defconfig

# create config pico mini
printf '1\n1\n0\n' | ./build.sh conf

# patch config and filesystem
cp myconfig/BoardConfig.mk project/cfg/BoardConfig_IPC/BoardConfig-SPI_NAND-Buildroot-RV1103_Luckfox_Pico_Mini-IPC.mk
cp -r myconfig/overlay/* project/cfg/BoardConfig_IPC/overlay/overlay-myconfig
rm project/cfg/BoardConfig_IPC/overlay/overlay-luckfox-buildroot-init/etc/init.d/S99usb0config
rm -rf project/cfg/BoardConfig_IPC/overlay/overlay-luckfox-buildroot-shadow/etc/samba

# now build can be started
# ./build.sh