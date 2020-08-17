#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from onclite device
$(call inherit-product, device/xiaomi/onclite/device.mk)

# Inherit some common RR stuff.
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 720

# Gapps
TARGET_GAPPS_ARCH := arm64

# RR Stuffs
TARGET_FACE_UNLOCK_SUPPORTED := true
RR_BUILDTYPE := Official

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := rr_onclite
PRODUCT_DEVICE := onclite
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 7
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "xiaomi/tissot/tissot_sprout:8.0.0/OPR1.170623.026/8.1.10:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tissot-user 8.0.0 OPR1.170623.026 8.1.10 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
