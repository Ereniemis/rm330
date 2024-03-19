#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from rm330 device
$(call inherit-product, device/dji/rm330/device.mk)

PRODUCT_DEVICE := rm330
PRODUCT_NAME := twrp_rm330
PRODUCT_BRAND := DJI
PRODUCT_MODEL := DJI RC
PRODUCT_MANUFACTURER := dji

PRODUCT_GMS_CLIENTID_BASE := android-dji

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rm330-user 10 V00.13.00.81 81 test-keys"

BUILD_FINGERPRINT := DJI/rm330/rm330:10/V00.13.00.81/81:user/test-keys
