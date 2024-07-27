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

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2460
TARGET_SCREEN_WIDTH := 1080

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.device@3.6.vendor \
    android.hardware.camera.provider@2.6.vendor

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResTarget \
    SettingsProviderResTarget \
    SettingsResTarget \
    SystemUIResTarget

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.3.vendor

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 31

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/transsion/mt6789-common/common.mk)

# Inherit the proprietary files
$(call inherit-product, vendor/infinix/X6833B/X6833B-vendor.mk)
