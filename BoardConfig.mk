# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
# SPDX-License-Identifier: Apache-2.0

DEVICE_PATH := device/huawei/kirin710

# Build Rules
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_PREBUILT_ELF_FILES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a76

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a55

# Assert
TARGET_OTA_ASSERT_DEVICE := kirin710,INE-LX1,INE-L21

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := kirin710
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := kirin710
TARGET_BOARD_PLATFORM_GPU := mali
BUILD_BROKEN_DUP_RULES := true
TARGET_USES_64_BIT_BINDER := true
TARGET_SUPPORTS_64_BIT_APPS := true

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_IMAGE_NAME := dummykernel
BOARD_CUSTOM_BOOTIMG_MK := device/huawei/kirin710/custombootimg.mk
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x8000 --ramdisk_offset 0x01000000 --tags_offset 0x0100

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 16777216
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 6442450944

# Workarounds
TARGET_COPY_OUT_VENDOR := vendor
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := erofs
TARGET_COPY_OUT_PRODUCT := product
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4

# System as root
#BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_ROOT_EXTRA_FOLDERS := d hw_odm twres splash2 sec_storage

# File System
TARGET_EXFAT_DRIVER := exfat
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EROFS := true

#BOARD_SEPOLICY_DIRS += \
    device/huawei/kirin710/sepolicy
    
#BOARD_SEPOLICY_UNION += \
    device.te \
    file_contexts \
    init.te \
    kernel.te \
    logd.te \
    tee.te \
    recovery.te \
    vendor_init.te \


# Fstab and init.rc files
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/twrp.flags
TARGET_RECOVERY_DEVICE_DIRS += $(DEVICE_PATH)

# Recovery
TW_THEME := portrait_hdpi
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_NO_SELECT_BUTTON := true
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd_backlight0/brightness
TW_MAX_BRIGHTNESS := 7675
TW_DEFAULT_BRIGHTNESS := 900
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_NO_HAPTICS := true
TW_NO_SCREEN_BLANK := true
TW_USE_TOOLBOX := true
TW_CUSTOM_BATTERY_PATH := /sys/class/power_supply/Battery
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true
TW_USE_NEW_MINADBD := true
TW_EXCLUDE_APEX := true


# Selinux
#SELINUX_IGNORE_NEVERALLOWS := true
#BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private
BOARD_USES_EROFS := true
BOARD_USES_SELINUX := false


