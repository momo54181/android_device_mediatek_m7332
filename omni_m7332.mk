#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from m7332 device
$(call inherit-product, device/mediatek/m7332/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/mediatek/m7332/gsm.mk)

PRODUCT_DEVICE := m7332
PRODUCT_NAME := omni_m7332
PRODUCT_BRAND := MediaTek
PRODUCT_MODEL := m7332
PRODUCT_MANUFACTURER := mediatek

PRODUCT_GMS_CLIENTID_BASE := android-mediatek

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m7332_sa-userdebug 11 RP1A.200720.011 V3.0.1 test-keys"

BUILD_FINGERPRINT := MediaTek/m7332_sa/m7332:11/RP1A.200720.011/V3.0.1:userdebug/test-keys
