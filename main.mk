PRODUCT_PACKAGE_OVERLAYS += vendor/yashar/overlay/

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
    vendor/yashar/apns-conf.xml:system/etc/apns-conf.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Titania.ogg \
    ro.config.notification_sound=Tethys.ogg \
    ro.config.alarm_alert=Oxygen.ogg

# show selinux status
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1
    
PRODUCT_PACKAGES += \
    Camera2

ifeq ($(TARGET_USES_LEGACY_CAMHAL),true)
  PRODUCT_PROPERTY_OVERRIDES += \
      media.stagefright.legacyencoder=true \
      media.stagefright.less-secure=true
endif
