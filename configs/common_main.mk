# Include overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/aquaxp/overlay/common

# Main Required Packages
PRODUCT_PACKAGES += \
    Launcher3 \
    LiveWallpapersPicker

# Include explicitly to work around Facelock issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full

# Setup some default sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Titania.ogg \
    ro.config.notification_sound=Iapetus.ogg \
    ro.config.alarm_alert=Osmium.ogg

# Custom Packages
PRODUCT_PACKAGES += \
    Camera2