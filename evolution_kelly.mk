#
# Copyright (C) 2023 The evolutionOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Inherit from kelly device
$(call inherit-product, device/tecno/kelly/device.mk)

PRODUCT_DEVICE := kelly
PRODUCT_NAME := evolution_kelly
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := kelly
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_tssi_32_ago_tecno-user 12 RP1A.200720.012 110917 release-keys"

BUILD_FINGERPRINT := TECNO/kelly-OP/kelly:12/RP1A.200720.012/220929V105:user/release-keys
