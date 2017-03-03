# Include common telephony configuration
include vendor/aquaxp/configs/common_phone.mk

# Inherit AOSP device configuration for bullhead
$(call inherit-product, device/lge/bullhead/aosp_hammerhead.mk)

# Override AOSP build properties
PRODUCT_NAME := full_hammerhead
PRODUCT_DEVICE := hammerhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:7.1.1/N4F26O/3582057:user/release-keys \
PRIVATE_BUILD_DESC="hammerhead-user 7.1.1 N4F26O 3582057 release-keys"

# inline kernel building
TARGET_KERNEL_SOURCE := kernel/lge/hammerhead
TARGET_KERNEL_CONFIG := hammerhead_defconfig
TARGET_VARIANT_CONFIG := hammerhead_defconfig
TARGET_SELINUX_CONFIG := hammerhead_defconfig
BOARD_KERNEL_IMAGE_NAME := zImage-dtb