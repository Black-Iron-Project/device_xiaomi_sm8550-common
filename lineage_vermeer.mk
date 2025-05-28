#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common AOSP configurations
$(call inherit-product, build/make/target/product/full_base_telephony.mk)
$(call inherit-product, build/make/target/product/core_64_bit_only.mk)

# Inherit device-specific configurations
$(call inherit-product, device/xiaomi/vermeer/device.mk)

# Inherit Blackiron configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# BLKI
 WITH_GMS := true
 TARGET_HAS_UDFPS := true
 TARGET_ENABLE_BLUR := true
 BLACKIRON_BUILDTYPE := Official
 BLACKIRON_MAINTAINER := Ralf979

PRODUCT_DEVICE := vermeer
PRODUCT_NAME := lineage_vermeer
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 23113RKC6G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=POCO/vermeer_global/vermeer:15/AQ3A.240912.001/OS2.0.102.0.VNKMIXM:user/release-keys

 # Inherit from release keys
 $(call inherit-product, vendor/lineage-priv/keys/keys.mk)
