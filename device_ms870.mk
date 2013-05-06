#
# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libstagefrighthw

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Live wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/wifi/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf

# Audio
PRODUCT_PACKAGES += \
    alsa.msm8960 \
    audio.a2dp.default \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    audio.usb.default \
    libalsa-intf \
    libaudioutils

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/init.lge_dut.bt.sh:/system/etc/init.lge_dut.bt.sh \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.ftm_module.sh:/system/etc/init.qcom.ftm_module.sh \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.ftm_module_out.sh:/system/etc/init.qcom.ftm_module_out.sh \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.mdm_links.sh:/system/etc/init.qcom.mdm_links.sh \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.modem_links.sh:/system/etc/init.qcom.modem_links.sh \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh \
    $(LOCAL_PATH)/prebuilt/etc/init.wlan-on-off.sh:/system/etc/init.wlan-on-off.sh

# 2nd-init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/xbin/2nd-init:/system/xbin/2nd-init \
    $(LOCAL_PATH)/prebuilt/xbin/cm10.sh:/system/xbin/cm10.sh \
    $(LOCAL_PATH)/prebuilt/xbin/cm10.tar:/system/xbin/cm10.tar \
    $(LOCAL_PATH)/prebuilt/xbin/mksh2:/system/xbin/mksh2 \
    $(LOCAL_PATH)/prebuilt/xbin/recovery.sh:/system/xbin/recovery.sh \
    $(LOCAL_PATH)/prebuilt/xbin/recovery.tar:/system/xbin/recovery.tar \
    $(LOCAL_PATH)/prebuilt/xbin/taskset:/system/xbin/taskset

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardwardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

# GPS config
PRODUCT_COPY_FILES += device/common/gps/gps.conf_US:system/etc/gps.conf

# Media config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# vold config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# thermald config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/thermald.conf:/system/etc/thermald.conf

# apn config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/apns-conf.xml:/system/etc/apns-conf.xml

# Sound configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/ms870-keypad.kl:system/usr/keylayout/ms870-keypad.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/hs_detect.kl:system/usr/keylayout/hs_detect.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/osp3-input.kl:system/usr/keylayout/osp3-input.kl

# Input device config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/idc/keypad-8960.idc:system/usr/idc/keypad-8960.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/synaptics_ts.idc:system/usr/idc/synaptics_ts.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/osp3-input.idc:system/usr/idc/osp3-input.idc

# Prebuilt libraries that are needed for DRM playback
PRODUCT_COPY_FILES += \
    device/lge/ms870/prebuilt/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \
    device/lge/ms870/prebuilt/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
    device/lge/ms870/prebuilt/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    device/lge/ms870/prebuilt/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
    device/lge/ms870/prebuilt/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml

# Camera
PRODUCT_PACKAGES += \
    libcameraservice

# Torch
PRODUCT_PACKAGES += \
    Torch

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise


# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# call the proprietary setup
$(call inherit-product-if-exists, vendor/lge/ms870/ms870-vendor.mk)
