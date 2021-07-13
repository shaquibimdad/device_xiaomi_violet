#
# Copyright (C) 2020 The LineageOS Project

# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/revengeos/config/common.mk)
TARGET_BOOT_ANIMATION_RES := 1080
REVENGEOS_BUILDTYPE := OFFICIAL
TARGET_FACE_UNLOCK_SUPPORTED := true

# Build Description
PRODUCT_BUILD_PROP_OVERRIDES += \
        TARGET_DEVICE="violet" \
        PRODUCT_NAME="violet" \
        PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.210705.001 7380771 release-keys"
	PRODUCT_NAME="violet"

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cherish_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
