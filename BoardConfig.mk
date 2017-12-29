#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

BOARD_VENDOR                    := xiaomi
TARGET_RELEASETOOLS_EXTENSIONS  := device/xiaomi/cancro

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME  := MSM8974
TARGET_NO_BOOTLOADER          := true
TARGET_NO_RADIOIMAGE          := true

# Platform
TARGET_BOARD_PLATFORM     := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330

# Architecture
TARGET_ARCH                         := arm
TARGET_ARCH_VARIANT                 := armv7-a-neon
TARGET_CPU_ABI                      := armeabi-v7a
TARGET_CPU_ABI2                     := armeabi
TARGET_CPU_SMP                      := true
TARGET_CPU_VARIANT                  := krait
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Kernel
TARGET_PREBUILT_KERNEL    := device/xiaomi/cancro/kernel
BOARD_KERNEL_CMDLINE      := ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3  androidboot.selinux=permissive 
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_BASE         := 0x00000000
BOARD_KERNEL_PAGESIZE     := 2048
BOARD_MKBOOTIMG_ARGS      := --ramdisk_offset 0x02000000 --tags_offset 0x0100

# Filesystem
TARGET_USERIMAGES_USE_EXT4            := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE     := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE   := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE        := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE    := 0x01000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE      := 671088640
BOARD_USERDATAIMAGE_PARTITION_SIZE    := 536870912
BOARD_CACHEIMAGE_PARTITION_SIZE       := 402653184
BOARD_PERSISTIMAGE_PARTITION_SIZE     := 16777216
BOARD_TOMBSTONESIMAGE_PARTITION_SIZE  := 73400320
BOARD_FLASH_BLOCK_SIZE                := 131072

# TWRP configuration
DEVICE_RESOLUTION                       := 1080x1920
BOARD_HAS_NO_REAL_SDCARD                := true
BOARD_RECOVERY_SWIPE                    := true
RECOVERY_GRAPHICS_USE_LINELENGTH        := true
TARGET_RECOVERY_PIXEL_FORMAT            := "RGBX_8888"
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID  := true
RECOVERY_FSTAB_VERSION                  := 2
BOARD_NATIVE_DUALBOOT                   := true
BOARD_NATIVE_DUALBOOT_SINGLEDATA        := true
TARGET_RECOVERY_LCD_BACKLIGHT_PATH      := "/sys/class/leds/lcd-backlight/brightness"
TW_INCLUDE_CRYPTO                       := true
TW_NO_SCREEN_TIMEOUT                    := true
TW_NO_SCREEN_BLANK                      := true
TARGET_RECOVERY_QCOM_RTC_FIX            := true
BOARD_SUPPRESS_SECURE_ERASE             := true
BOARD_SUPPRESS_EMMC_WIPE                := true
RECOVERY_SDCARD_ON_DATA                 := true

# SELinux policies
# qcom sepolicy
#include device/qcom/sepolicy/sepolicy.mk

#BOARD_SEPOLICY_DIRS += \
#        device/xiaomi/msm8974-common/sepolicy

# wangyakun, 2017-12-14
BOARD_CUSTOM_BOOTIMG_MK := device/xiaomi/cancro/mkbootimg.mk

