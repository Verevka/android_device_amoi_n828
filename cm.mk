## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := n828

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/amoi/n828/device_n828.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n828
PRODUCT_NAME := cm_n828
PRODUCT_BRAND := amoi
PRODUCT_MODEL := n828
PRODUCT_MANUFACTURER := amoi
