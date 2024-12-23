#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl \
    android.hardware.boot@1.1-impl.recovery \
    android.hardware.boot@1.1-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# libhealthd
PRODUCT_PACKAGES += \
    libhealthd.recovery \
    libhealthd

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-service

# DRM
PRODUCT_PACKAGES += \
    libdrm \
    android.hardware.drm@1.3-service.clearkey

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.allocator@1.0 \
    android.hidl.base@1.0.vendor \
    android.hidl.allocator@1.0.vendor \
    libbinderwrapper \
    libbinderwrapper.vendor \
    libhidltransport \
    libhidltransport.vendor \
    libhwbinder \
    libhwbinder.vendor

# API levels
PRODUCT_SHIPPING_API_LEVEL := 30
PRODUCT_TARGET_VNDK_VERSION := 30

# vndk
PRODUCT_PACKAGES +=\
    vndk_package

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# Bootctrl
PRODUCT_PACKAGES += \
    bootctrl.default

# RenderScript HAL
PRODUCT_PACKAGES += \
     android.hardware.renderscript@1.0-impl

#add USB vts service
PRODUCT_PACKAGES += \
    android.hardware.usb@1.1-service

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

PRODUCT_PACKAGES += \
    android.hardware.graphics.mapper@2.0-impl-2.1 \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.composer@2.1-service

PRODUCT_PACKAGES += \
        NfcNci

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# HIDL
PRODUCT_ENFORCE_VINTF_MANIFEST := true

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := default

#default audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default

PRODUCT_PACKAGES += \
    audio.primary.default \
    local_time.default \
    vibrator.default \
    power.default

# Power stats
PRODUCT_PACKAGES += \
    android.hardware.power.stats@1.0-service.mock

# sensor
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-service \
    android.hardware.sensors@1.0-impl

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.1-service

# Vibrator HAL
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-service \
    android.hardware.vibrator@1.0-impl

# Rebootescrow
PRODUCT_PACKAGES += \
    android.hardware.rebootescrow-service.default

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@2.0-service.mock

# WiFi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service

# OMX
PRODUCT_PACKAGES += \
    android.hardware.media.omx@1.0-service

# Gnss
PRODUCT_PACKAGES += \
    android.hardware.gnss@2.1-service

# Memtrack
PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service

#audio hidl hal impl
PRODUCT_PACKAGES += \
    android.hardware.audio@5.0-impl \
    android.hardware.bluetooth.audio@2.0-impl \
    android.hardware.audio.effect@5.0-impl \
    android.hardware.broadcastradio@1.0-impl \
    android.hardware.soundtrigger@2.0-impl \
    android.hardware.audio@2.0-service

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service

# Rootdir
PRODUCT_PACKAGES += \
    log_to_csv.sh \
    loading.sh \
    para.sh \
    total.sh \

PRODUCT_PACKAGES += \
    fstab.charge_mode \
    init.P682LPN.rc \
    init.P682LPN.usb.rc \
    init.cali.rc \
    init.factorytest.rc \
    init.ram.rc \
    init.stnfc.rc \
    init.storage.rc \
    init.recovery.P682LPN.rc \
    init.recovery.common.rc \
    ueventd.P682LPN.rc \


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/fstab.charge_mode:$(TARGET_ROOT_OUT)/first_stage_ramdisk/fstab.charge_mode \
    $(LOCAL_PATH)/rootdir/system/etc/fstab.P682LPN.first_stage_ramdisk:$(TARGET_ROOT_OUT)/first_stage_ramdisk/fstab.P682LPN

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product-if-exists, vendor/itel/P682LPN/P682LPN-vendor.mk)