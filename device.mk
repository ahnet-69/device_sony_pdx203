#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sony sm8250-common
$(call inherit-product, device/sony/sm8250-common/common.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Overlays
PRODUCT_PACKAGES += \
    AOSPASonyPDX203FrameworksResCommon \
    SonyPDX203SystemUIRes \
    SonyPDX203FrameworksRes

# HDR
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/display/libhdr_somc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/libhdr_somc.xml

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from vendor blobs
$(call inherit-product, vendor/sony/pdx203/pdx203-vendor.mk)

TARGET_SUPPORTS_HIGH_REFRESH_RATE := false
