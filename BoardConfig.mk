#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/leagoo/f5c62w

# Board
BOARD_GLOBAL_CFLAGS += -DMTK_BATTERY_VOLTAGE
FORCE_32_BIT := true
SELINUX_PERMISSIVE := true

# Kernel informations
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x04000000
BOARD_TAGS_OFFSET := 0xE000000

# Kernel properties
TARGET_PREBUILT_KERNEL := device/leagoo/f5c62w/prebuilts/kernel

TARGET_BOOTLOADER_BOARD_NAME := mt6737m

# Assert
TARGET_OTA_ASSERT_DEVICE := M8_pro,M8 Pro,m8_pro,f5c62w,FLOW5PLUS,FLOW_5PLUS

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1887436800
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4698144768
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# TWRP
ifeq ($(WITH_TWRP),true)
DEVICE_RESOLUTION := 720x1280
DEVICE_SCREEN_WIDTH := 720
DEVICE_SCREEN_HEIGHT := 1280
TW_THEME := portrait_hdpi
endif

# inherit from the proprietary version
-include vendor/leagoo/f5c62w/BoardConfigVendor.mk

# inherit common board flags
include device/mediatek/mt6737-common/BoardConfigCommon.mk
