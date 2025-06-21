#!/bin/bash
cp myconfig/.BoardConfig.mk project/cfg/BoardConfig_IPC/BoardConfig-SPI_NAND-Buildroot-RV1103_Luckfox_Pico_Mini-IPC.mk
cp myconfig/buildroot_defconfig sysdrv/source/buildroot/buildroot-2023.02.6/configs/luckfox_pico_defconfig
cp myconfig/dts_config sysdrv/source/kernel/arch/arm/boot/dts/rv1103g-luckfox-pico-mini.dts
cp myconfig/kernel_defconfig sysdrv/source/kernel/arch/arm/configs/luckfox_rv1106_linux_defconfig