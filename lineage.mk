# Release name
PRODUCT_RELEASE_NAME := KING_KONG

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/CUBOT/KING_KONG/lineage_KING_KONG.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := KING_KONG
PRODUCT_NAME := lineage_KING_KONG
PRODUCT_BRAND := CUBOT
PRODUCT_MODEL := CUBOT KING KONG 
PRODUCT_MANUFACTURER := CUBOT

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=CUBOT/CUBOT_KING_KONG/CUBOT_KING_KONG:7.0/NRD90M/1508934554:user/release-keys \
    PRIVATE_BUILD_DESC="CUBOT_KING_KONG-user 7.0 NRD90M 1508934554 release-keys"



# SuperUser
WITH_SU := false
WITH_ROOT := false
