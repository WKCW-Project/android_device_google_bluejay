#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bluejay/aosp_bluejay.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)
$(call inherit-product, device/google/bluejay/device-lineage.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6a
PRODUCT_NAME := orion_bluejay

# Gapps
TARGET_STOCK_GAPPS := true
BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true

# OrionOS Flags
ORION_MAINTAINER := rmdn.
ORION_MAINTAINER_LINK := https://t.me/ramaadni
ORION_BUILD_TYPE := OFFICIAL
ORION_GAPPS := true
TARGET_ENABLE_BLUR := false
TARGET_HAS_UDFPS := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=bluejay \
    PRIVATE_BUILD_DESC="bluejay-user 14 AP2A.240805.005.F1 12043167 release-keys"

BUILD_FINGERPRINT := google/bluejay/bluejay:14/AP2A.240805.005.F1/12043167:user/release-keys

$(call inherit-product, vendor/google/bluejay/bluejay-vendor.mk)
