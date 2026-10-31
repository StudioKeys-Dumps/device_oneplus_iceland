#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from iceland device
$(call inherit-product, device/oneplus/iceland/device.mk)

# Inherit some common bliss stuff.
$(call inherit-product, vendor/bliss/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := bliss_iceland
PRODUCT_DEVICE := iceland
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OPD2514
PRODUCT_CHARACTERISTICS := nosdcard,tablet

# GApps Architecture
GAPPS_ARCH := arm64

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi_64-user 17 CP2A.260605.016 1792304236194 release-keys" \
    BuildFingerprint=OnePlus/OPD2514IN/OP657AL1:17/CP2A.260605.016/B.R4T3.1649ec3_1035f4f_102d221:user/release-keys \
    DeviceName=OP657AL1 \
    DeviceProduct=OPD2514 \
    SystemDevice=OP657AL1 \
    SystemName=OPD2514
