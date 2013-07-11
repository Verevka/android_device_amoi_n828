$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/amoi/n828/n828-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/amoi/n828/overlay

LOCAL_PATH := device/amoi/n828
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# recovery
PRODUCT_COPY_FILES += \
    device/amoi/n828/recovery/advanced_meta_init.rc:recovery/root/advanced_meta_init.rc \
    device/amoi/n828/recovery/factory_init.project.rc:recovery/root/factory_init.project.rc \
    device/amoi/n828/recovery/factory_init.rc:recovery/root/factory_init.rc \
    device/amoi/n828/recovery/fstab:recovery/root/fstab \
    device/amoi/n828/recovery/meta_init.modem.rc:recovery/root/meta_init.modem.rc \
    device/amoi/n828/recovery/meta_init.project.rc:recovery/root/meta_init.project.rc \
    device/amoi/n828/recovery/meta_init.rc:recovery/root/meta_init.rc \
    device/amoi/n828/recovery/sec.ko:recovery/root/sec.ko \
    device/amoi/n828/recovery/ueventd.rc:recovery/root/ueventd.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_n828
PRODUCT_DEVICE := n828
