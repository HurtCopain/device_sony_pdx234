#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.mk
$(call inherit-product, $(LOCAL_PATH)/device.mk)

TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := true

WITH_GAPPS := true

TARGET_INCLUDE_SONY_CAMERA := true
TARGET_INCLUDE_SONY_MUSIC := true

# Inherit from Project 404 vendor config
$(call inherit-product, vendor/404/configs/common.mk)

TARGET_CHARGER_RESOURCE_COPY_OUT := $(TARGET_COPY_OUT_VENDOR)

TARGET_BOOT_ANIMATION_RES := 1440

TARGET_USES_AOSP_RECOVERY := true

TARGET_BOARD_PLATFORM := kalama

PRODUCT_NAME := p404_pdx234
PRODUCT_DEVICE := pdx234
PRODUCT_MANUFACTURER := Sony
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Pdx234

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="XQ-DQ72-user 13 67.0.A.4.79 067000A004007900521143226 release-keys" \
    PRODUCT_BRAND=Sony \
    TARGET_DEVICE=pdx234 \
    PRODUCT_MANUFACTURER=Sony \
    PRODUCT_MODEL=Pdx234 \
    TARGET_PRODUCT=pdx234 \
    PRODUCT_SYSTEM_BRAND=Sony \
    PRODUCT_SYSTEM_DEVICE=pdx234 \
    PRODUCT_SYSTEM_MANUFACTURER=Sony \
    PRODUCT_SYSTEM_MODEL=Pdx234 \
    PRODUCT_SYSTEM_NAME=pdx234

BUILD_FINGERPRINT := Sony/XQ-DQ72/XQ-DQ72:13/67.0.A.4.79/067000A004007900521143226:user/release-keys
