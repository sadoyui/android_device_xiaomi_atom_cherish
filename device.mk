#
# Copyright (C) 2022 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

# atom vendor
$(call inherit-product, vendor/xiaomi/atom/atom-vendor.mk)

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# RRO_Overlays
PRODUCT_PACKAGES += \
    CarrierConfigOverlay \
    FrameworksResOverlay \
    SettingsOverlay \
    SystemUIOverlay \
    TelephonyOverlay \

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 31
PRODUCT_EXTRA_VNDK_VERSIONS := 30 31

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false 

# APN
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/apns-conf.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/apns-conf.xml

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.3-service.xiaomi_mt6873

# Init
PRODUCT_PACKAGES += \
	init.mt6873.rc \
	fstab.mt6873 \
	perf_profile.sh

# Ims
PRODUCT_PACKAGES += \
    libem_support_jni \

PRODUCT_BOOT_JARS += \
    mediatek-common \
    mediatek-framework \
    mediatek-ims-base \
    mediatek-ims-common \
    mediatek-telecom-common \
    mediatek-telephony-base \
    mediatek-telephony-common

# RcsService
PRODUCT_PACKAGES += \
    RcsService

# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/permissions/privapp-permissions-mediatek.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-mediatek.xml
