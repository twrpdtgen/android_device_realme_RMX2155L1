#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from RMX2155L1 device
$(call inherit-product, device/realme/RMX2155L1/device.mk)

PRODUCT_DEVICE := RMX2155L1
PRODUCT_NAME := omni_RMX2155L1
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX2155
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_mssi_64_cn_armv82-user 12 SP1A.210812.016 1657680378584 release-keys"

BUILD_FINGERPRINT := realme/RMX2155EEA/RMX2155L1:12/SP1A.210812.016/Q.GDPR.202207131058:user/release-keys
