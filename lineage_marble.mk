##
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from marble device
$(call inherit-product, device/xiaomi/marble/device.mk)

# Inherit from common axion configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := axion_marble
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 23049PCD8G

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="marble_global-user 15 AQ3A.241006.001 OS3.0.4.0.VMRMIXM release-keys" \
    BuildFingerprint=POCO/marble_global/marble:15/AQ3A.241006.001/OS3.0.4.0.VMRMIXM:user/release-keys \
    DeviceProduct=marble \
    SystemName=marble_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_DISABLE_EPPE := true
WITH_GAPPS := true

# Axion
TARGET_DISABLE_EPPE := true
WITH_GAPPS := true
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_AXFX := false

# Camera information (multiple sensors supported)
AXION_CAMERA_REAR_INFO := 64,8,2
AXION_CAMERA_FRONT_INFO := 16
TARGET_DOZE_TAP_PULSE_SUPPORTED := true
TARGET_DOZE_DOUBLE_TAP_PULSE_SUPPORTED := true
TARGET_DOZE_PICKUP_PULSE_SUPPORTED := true
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120
TARGET_INCLUDES_LOS_PREBUILTS := true

# Maintainer name (underscores become spaces in the UI)
AXION_MAINTAINER := PabloEscobar

# Processor name (underscores become spaces)
AXION_PROCESSOR := Snapdragon®_7+_Gen_2_(SM7475)
