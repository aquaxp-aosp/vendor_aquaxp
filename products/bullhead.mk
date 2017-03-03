# Include common telephony configuration
include vendor/aquaxp/configs/common_phone.mk

# Inherit AOSP device configuration for bullhead
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

# Override AOSP build properties
PRODUCT_NAME := bullhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := bullhead
PRODUCT_MODEL := Nexus 5X
PRODUCT_MANUFACTURER := LGE

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bullhead \
    BUILD_FINGERPRINT=google/bullhead/bullhead:7.1.1/N4F26O/3582057:user/release-keys \
    PRIVATE_BUILD_DESC="bullhead-user 7.1.1 N4F26O 3582057 release-keys"