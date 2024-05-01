# Call device.mk (shared between CM/LineageOS & AOSP)
$(call inherit-product, device/itel/P682LPN/device.mk)

# Call tablet config
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Device branding
PRODUCT_BRAND := itel
PRODUCT_DEVICE := P682LPN
PRODUCT_MANUFACTURER := itel
PRODUCT_MODEL := itel Vision 3 Plus
PRODUCT_NAME := lineage_P682LPN
PRODUCT_RELEASE_NAME := itelLineage3Plus