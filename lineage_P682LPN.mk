$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device branding
PRODUCT_BRAND := itel
PRODUCT_DEVICE := P682LPN
PRODUCT_MANUFACTURER := itel
PRODUCT_MODEL := itel Vision 3 Plus
PRODUCT_NAME := lineage_P682LPN
PRODUCT_RELEASE_NAME := itelVision3Plus

TARGET_BOOTANIMATION := device/itel/P682LPN/prebuilt/bootanimation.zip