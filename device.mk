# Inherit from t310-common
$(call inherit-product, device/itel/P682LPN/P682LPN.mk)

# Fix symlinks
$(call inherit-product, $(LOCAL_PATH)/fixsymlinks/fixsymlinks.mk)


# Recovery files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/ueventd.ums312_2h10.rc:root/ueventd.ums312_2h10.rc \
    $(LOCAL_PATH)/recovery/init.recovery.ums312_2h10.rc:root/init.recovery.ums312_2h10.rc \
