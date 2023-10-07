#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/infinix/X6833B
KERNEL_PATH := $(DEVICE_PATH)-kernel

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1.vendor:64

# Overlays
PRODUCT_PACKAGES += \
    SettingsProviderResTarget

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 31

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/transsion/mt6789-common/common.mk)

# Inherit the proprietary files
$(call inherit-product, vendor/infinix/X6833B/X6833B-vendor.mk)
