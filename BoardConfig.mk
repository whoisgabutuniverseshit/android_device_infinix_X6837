#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/transsion/mt6789-common/BoardConfigCommon.mk

# Boot image
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

# DTB
BOARD_PREBUILT_DTBOIMAGE := $(KERNEL_PATH)/dtbo.img
BOARD_PREBUILT_DTBIMAGE_DIR := $(KERNEL_PATH)/dtb

# Kernel
TARGET_NO_KERNEL_OVERRIDE := true
LOCAL_KERNEL := $(KERNEL_PATH)/Image.gz
PRODUCT_COPY_FILES += \
	$(LOCAL_KERNEL):kernel

# Kernel modules
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := $(strip $(shell cat $(KERNEL_PATH)/modules.load.vendor_ramdisk))
BOARD_VENDOR_RAMDISK_KERNEL_MODULES := $(addprefix $(KERNEL_PATH)/modules/, $(BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD))

BOARD_RECOVERY_KERNEL_MODULES_LOAD := $(strip $(shell cat $(KERNEL_PATH)/modules.load.recovery))
BOARD_RECOVERY_KERNEL_MODULES := $(addprefix $(KERNEL_PATH)/modules/, $(BOARD_RECOVERY_KERNEL_MODULES_LOAD))

# Inherit the proprietary files
include vendor/infinix/X6833B/BoardConfigVendor.mk
