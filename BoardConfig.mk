#
# Copyright (C) 2015-2016 The Android Open-Source Project
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
# inherit from common msm8916
-include device/lge/msm8916-common/BoardConfigCommon.mk

LOCAL_PATH := device/lge/c70n

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824      # 24576 * 1024 mmcblk0p18
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25165824  # 24576 * 1024 mmcblk0p19
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2576980992  # 2516583 * 1024 mmcblk0p37
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3833488384 # 3743641 * 1024 mmcblk0p39

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.qcom
#BOARD_HAS_NO_SELECT_BUTTON := true
#TARGET_PREBUILT_KERNEL := device/lge/c70n/recovery/kernel

# Kernel
TARGET_KERNEL_CONFIG := c70_defconfig
TARGET_KERNEL_SOURCE := kernel/lge/msm8916
#BOARD_KERNEL_SEPARATED_DT := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# NFC
BOARD_NFC_DEVICE := "/dev/bcm2079x"

# TWRP
#RECOVERY_VARIANT := twrp
#TW_THEME := portrait_hdpi
#TARGET_RECOVERY_QCOM_RTC_FIX := true
#TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
#TW_IGNORE_MISC_WIPE_DATA := true
