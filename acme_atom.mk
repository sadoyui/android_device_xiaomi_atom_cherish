#
# Copyright (C) 2022 The AcmeUI Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from atom device makefile
$(call inherit-product, device/xiaomi/atom/device.mk)

# Inherit from the AcmeUI configuration.
$(call inherit-product, vendor/acme/config/mobile.mk)

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := acme_atom
PRODUCT_DEVICE := atom
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2004J7AC
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi