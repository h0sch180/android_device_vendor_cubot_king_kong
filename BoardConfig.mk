#
# Copyright (C) 2016 The CyanogenMod Project
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

TARGET_BOARD_PLATFORM := mt6580

DEVICE_PATH := device/CUBOT/KING_KONG

include device/CUBOT/KING_KONG/mt6580-common/BoardConfigCommon.mk

MTK_APPENDED_DTB_SUPPORT := yes

# Partitions
# make_ext4fs requires numbers in dec format
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216 
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216 
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1040080896
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5841846272 
BOARD_CACHEIMAGE_PARTITION_SIZE := 260014080
BOARD_FLASH_BLOCK_SIZE := 4096

# ota block
BLOCK_BASED_OTA := false

#Disable NINJA
#USE_NINJA := false 

# Kernel
TARGET_KMODULES := true
BOARD_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# Flags
BOARD_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Fonts
EXTENDED_FONT_FOOTPRINT := true

TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# OTA assert
TARGET_OTA_ASSERT_DEVICE := KING_KONG,CUBOT_KING_KONG,king_kong,cubot_king_kong

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Configure jemalloc for low memory
MALLOC_SVELTE := true

# Use old sepolicy version
#POLICYVERS := 29

# Include needed symbols
TARGET_INCLUDE_XLOG_SYMBOLS := false
TARGET_INCLUDE_RIL_SYMBOLS := true
include $(DEVICE_PATH)/symbols.mk

# Deodex ? = false
ODEX := false

ifeq ($(ODEX),true)
    WITH_DEXPREOPT := true
    DISABLE_DEXPREOPT := false
endif

LOCAL_SDK_VERSION := current
