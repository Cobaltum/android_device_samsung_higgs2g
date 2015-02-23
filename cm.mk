## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := higgs2g

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/g350e/device_higgs2g.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := higgs2g
PRODUCT_NAME := cm_higgs2g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := higgs2g
PRODUCT_MANUFACTURER := samsung
