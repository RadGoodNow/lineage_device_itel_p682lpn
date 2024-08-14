#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# API levels
PRODUCT_SHIPPING_API_LEVEL := 30

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    log_to_csv.sh \
    loading.sh \
    para.sh \
    total.sh \

PRODUCT_PACKAGES += \
    fstab.charge_mode \
    init.P681LM.rc \
    init.P681LM.usb.rc \
    init.P682LP.rc \
    init.P682LP.usb.rc \
    init.P682LPN.rc \
    init.P682LPN.usb.rc \
    init.S661L.rc \
    init.S661L.usb.rc \
    init.cali.rc \
    init.factorytest.rc \
    init.ram.rc \
    init.stnfc.rc \
    init.storage.rc \
    init.ums9230_14c10.rc \
    init.ums9230_14c10.usb.rc \
    init.ums9230_1h10.rc \
    init.ums9230_1h10.usb.rc \
    init.ums9230_1h10_go.rc \
    init.ums9230_1h10_go.usb.rc \
    init.ums9230_3h10.rc \
    init.ums9230_3h10.usb.rc \
    init.ums9230_3h10_go.rc \
    init.ums9230_3h10_go.usb.rc \
    init.ums9230_4h10.rc \
    init.ums9230_4h10.usb.rc \
    init.ums9230_4h10_go.rc \
    init.ums9230_4h10_go.usb.rc \
    init.ums9230_haps.rc \
    init.ums9230_haps.usb.rc \
    init.ums9230_haps_flash.rc \
    init.ums9230_haps_flash.usb.rc \
    init.ums9230_zebu.rc \
    init.ums9230_zebu.usb.rc \
    init.recovery.P681LM.rc \
    init.recovery.P682LP.rc \
    init.recovery.P682LPN.rc \
    init.recovery.S661L.rc \
    init.recovery.common.rc \
    init.recovery.ums9230_14c10.rc \
    init.recovery.ums9230_1h10.rc \
    init.recovery.ums9230_1h10_go.rc \
    init.recovery.ums9230_3h10.rc \
    init.recovery.ums9230_3h10_go.rc \
    init.recovery.ums9230_4h10.rc \
    init.recovery.ums9230_4h10_go.rc \
    init.recovery.ums9230_haps.rc \
    init.recovery.ums9230_haps_flash.rc \
    init.recovery.ums9230_zebu.rc \
    ueventd.P681LM.rc \
    ueventd.P682LP.rc \
    ueventd.P682LPN.rc \
    ueventd.S661L.rc \
    ueventd.ums9230_14c10.rc \
    ueventd.ums9230_1h10.rc \
    ueventd.ums9230_1h10_go.rc \
    ueventd.ums9230_3h10.rc \
    ueventd.ums9230_3h10_go.rc \
    ueventd.ums9230_4h10.rc \
    ueventd.ums9230_4h10_go.rc \
    ueventd.ums9230_haps.rc \
    ueventd.ums9230_haps_flash.rc \
    ueventd.ums9230_zebu.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.charge_mode:$(TARGET_VENDOR_RAMDISK_OUT)/first_stage_ramdisk/fstab.charge_mode

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/itel/P682LPN/P682LPN-vendor.mk)
