include vendor/aquaxp/configs/aosp_addons.mk
include vendor/aquaxp/configs/bootanimation.mk
include vendor/aquaxp/configs/common_main.mk
include vendor/aquaxp/configs/system_additions.mk
include vendor/aquaxp/configs/version.mk

# Telephony packages
PRODUCT_PACKAGES += \
    Stk \
    CellBroadcastReceiver

# Allow tethering without provisioning app
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# Pull in Prebuilt applications for phones
#    $(call inherit-product-if-exists, vendor/prebuilt/prebuilt.mk)

PRODUCT_COPY_FILES += \
    vendor/aquaxp/prebuilt/apns-conf.xml:system/etc/apns-conf.xml


# Thank you, please drive thru!
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.dun.override=0
