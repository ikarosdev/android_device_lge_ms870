#
# Copyright (C) 2012 The CyanogenMod Project
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

# Release name
PRODUCT_RELEASE_NAME := LG-MS870

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540 

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
#$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/ms870/device_ms870.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ms870
PRODUCT_NAME := cm_ms870
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-MS870
PRODUCT_MANUFACTURER := lge

    CDMA_CARRIER_ALPHA := MetroPCS
    CDMA_CARRIER_NUMERIC := 311660

PRODUCT_PROPERTY_OVERRIDES += \
    ro.cdma.home.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    ro.cdma.home.operator.numeric=$(CDMA_CARRIER_NUMERIC) \
    gsm.sim.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    gsm.sim.operator.numeric=$(CDMA_CARRIER_NUMERIC) \
    gsm.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    gsm.operator.numeric=$(CDMA_CARRIER_NUMERIC) \

# Set build fingerprint / ID / Product Name ect.
#PRODUCT_BUILD_PROP_OVERRIDES += \
#    BUILD_FINGERPRINT="lge/l1m_MPCS_US/l1m:4.0.4/IMM76I/MS77010f.1360114527:user/release-keys" \
#    PRIVATE_BUILD_DESC="l0_MPCS_US-user 4.0.4 IMM76I MS77010f.1360114527 release-keys"

# Allow ADB (to access dev settings)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.adb.secure=0 ro.debuggable=1 persist.sys.usb.config=mass_storage,adb persist.sys.root_access=3 persist.service.adb.enable=1

