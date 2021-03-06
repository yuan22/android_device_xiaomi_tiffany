# Boot animation
TARGET_SCREEN_HEIGHT :=1920
TARGET_SCREEN_WIDTH := 1080

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Display
PRODUCT_PACKAGES += \
    copybit.msm8953 \
    gralloc.msm8953 \
    hwcomposer.msm8953 \
    memtrack.msm8953 \
    liboverlay \
    libtinyxml

# Display calibration
PRODUCT_PACKAGES += \
    libjni_livedisplay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    debug.gralloc.gfx_ubwc_disable=0 \
    persist.sys.force_sw_gles=0 \
    ro.opengles.version=196610 \
    ro.sf.lcd_density=480
