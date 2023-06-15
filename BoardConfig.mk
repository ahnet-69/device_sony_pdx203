#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sony sm8250-common
-include device/sony/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/sony/pdx203

# Assert
TARGET_OTA_ASSERT_DEVICE := XQ-AT72,XQ-AT52,XQ-AT51,XQ-AT42,SOG01,SO-51A

# Display
TARGET_SCREEN_DENSITY := 420

BOARD_KERNEL_CMDLINE += buildproduct=pdx203

KERNEL_DEFCONFIG := pdx203_defconfig

BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)

# Libinit
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_pdx203

# Props
TARGET_VENDOR_PROP += $(DEVICE_PATH)/configs/properties/vendor.prop

# inherit from the proprietary version
-include vendor/sony/pdx203/BoardConfigVendor.mk

# Xperia Modules
TARGET_SUPPORTS_HIGH_REFRESH_RATE := false
