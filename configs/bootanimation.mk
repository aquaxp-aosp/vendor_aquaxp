# Add Stock bootanimation based on device
ifneq ($(filter bullhead,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/aquaxp/prebuilt/bootanimation/1080.zip:system/media/bootanimation.zip
endif
ifneq ($(filter hammerhead,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/aquaxp/prebuilt/bootanimation/1080.zip:system/media/bootanimation.zip
endif
