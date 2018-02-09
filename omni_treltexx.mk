# Release name
PRODUCT_RELEASE_NAME := treltexx

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

# Time Zone data for Recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata
	
## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := treltexx
PRODUCT_NAME := omni_treltexx
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
