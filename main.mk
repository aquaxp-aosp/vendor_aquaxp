PRODUCT_PACKAGE_OVERLAYS += vendor/aquaxp/overlay/

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.com.android.dateformat=MM-dd-yyyy

PRODUCT_COPY_FILES += \
    vendor/aquaxp/apns-conf.xml:system/etc/apns-conf.xml

# Copy bootanimation
PRODUCT_COPY_FILES += \
    vendor/aquaxp/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Titania.ogg \
    ro.config.notification_sound=Iapetus.ogg \
    ro.config.alarm_alert=Osmium.ogg

# show selinux status
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

PRODUCT_PACKAGES += \
    Camera2

# enable google assistant
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opa.eligible_device=true
