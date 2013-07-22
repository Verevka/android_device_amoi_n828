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

# boot
PRODUCT_COPY_FILES += \
    device/amoi/n828/boot/advanced_meta_init.rc:root/advanced_meta_init.rc \
	device/amoi/n828/boot/factory_init.project.rc:root/factory_init.project.rc \
	device/amoi/n828/boot/factory_init.rc:root/factory_init.rc \
	device/amoi/n828/boot/fstab:root/fstab \
	device/amoi/n828/boot/init.aee.customer.rc:root/init.aee.customer.rc \
	device/amoi/n828/boot/init.charging.rc:root/init.charging.rc \
	device/amoi/n828/boot/init.modem.rc:root/init.modem.rc \
	device/amoi/n828/boot/init.no_ssd.rc:root/init.no_ssd.rc \
	device/amoi/n828/boot/init.project.rc:root/init.project.rc \
	device/amoi/n828/boot/init.protect.rc:root/init.protect.rc \
	device/amoi/n828/boot/init.xlog.rc:root/init.xlog.rc \
	device/amoi/n828/boot/meta_init.modem.rc:root/meta_init.modem.rc \
	device/amoi/n828/boot/meta_init.project.rc:root/meta_init.project.rc \
	device/amoi/n828/boot/meta_init.rc:root/meta_init.rc

# tp
PRODUCT_COPY_FILES += \
    device/amoi/n828/.tp/.ht120.mtc:system/etc/.tp/.ht120.mtc \
    device/amoi/n828/.tp/thermal.conf:system/etc/.tp/thermal.conf \
    device/amoi/n828/.tp/thermal.off.conf:system/etc/.tp/thermal.off.conf  

# firmware
PRODUCT_COPY_FILES += \
    device/amoi/n828/firmware/mt6628/mt6628_fm_rom.bin:system/etc/firmware/mt6628/mt6628_fm_rom.bin \
    device/amoi/n828/firmware/mt6628/mt6628_fm_v1_coeff.bin:system/etc/firmware/mt6628/mt6628_fm_v1_coeff.bin \
    device/amoi/n828/firmware/mt6628/mt6628_fm_v1_patch.bin:system/etc/firmware/mt6628/mt6628_fm_v1_patch.bin \
    device/amoi/n828/firmware/mt6628/mt6628_fm_v2_coeff.bin:system/etc/firmware/mt6628/mt6628_fm_v2_coeff.bin \
    device/amoi/n828/firmware/mt6628/mt6628_fm_v2_patch.bin:system/etc/firmware/mt6628/mt6628_fm_v2_patch.bin \
    device/amoi/n828/firmware/mt6628/mt6628_fm_v3_coeff.bin:system/etc/firmware/mt6628/mt6628_fm_v3_coeff.bin \
    device/amoi/n828/firmware/mt6628/mt6628_fm_v3_patch.bin:system/etc/firmware/mt6628/mt6628_fm_v3_patch.bin \
    device/amoi/n828/firmware/mt6628/mt6628_fm_v4_coeff.bin:system/etc/firmware/mt6628/mt6628_fm_v4_coeff.bin \
    device/amoi/n828/firmware/mt6628/mt6628_fm_v4_patch.bin:system/etc/firmware/mt6628/mt6628_fm_v4_patch.bin \
    device/amoi/n828/firmware/mt6628/mt6628_fm_v5_coeff.bin:system/etc/firmware/mt6628/mt6628_fm_v5_coeff.bin \
    device/amoi/n828/firmware/mt6628/mt6628_fm_v5_patch.bin:system/etc/firmware/mt6628/mt6628_fm_v5_patch.bin \
	device/amoi/n828/firmware/modem.img:system/etc/firmware/modem.img \
	device/amoi/n828/firmware/mt6628_ant_m1.cfg:system/etc/firmware/mt6628_ant_m1.cfg \
	device/amoi/n828/firmware/mt6628_patch_e1_hdr.bin:system/etc/firmware/mt6628_patch_e1_hdr.bin \
	device/amoi/n828/firmware/mt6628_patch_e2_0_hdr.bin:system/etc/firmware/mt6628_patch_e2_0_hdr.bin \
	device/amoi/n828/firmware/mt6628_patch_e2_1_hdr.bin:system/etc/firmware/mt6628_patch_e2_1_hdr.bin \
	device/amoi/n828/firmware/S_ANDRO_SFL.ini:system/etc/firmware/S_ANDRO_SFL.ini \
	device/amoi/n828/firmware/WIFI_RAM_CODE:system/etc/firmware/WIFI_RAM_CODE \
	device/amoi/n828/firmware/WIFI_RAM_CODE_E6:system/etc/firmware/WIFI_RAM_CODE_E6 \
	device/amoi/n828/firmware/WIFI_RAM_CODE_MT6628:system/etc/firmware/WIFI_RAM_CODE_MT6628 \
	device/amoi/n828/firmware/WMT.cfg:system/etc/firmware/WMT.cfg

# frm
PRODUCT_COPY_FILES += \
    device/amoi/n828/frm/fm_cust.cfg:system/etc/frm/fm_cust.cfg

# permissions
PRODUCT_COPY_FILES += \
    device/amoi/n828/permissions/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
	device/amoi/n828/permissions/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	device/amoi/n828/permissions/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
	device/amoi/n828/permissions/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	device/amoi/n828/permissions/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
	device/amoi/n828/permissions/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	device/amoi/n828/permissions/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	device/amoi/n828/permissions/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	device/amoi/n828/permissions/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	device/amoi/n828/permissions/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	device/amoi/n828/permissions/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	device/amoi/n828/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	device/amoi/n828/permissions/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
	device/amoi/n828/permissions/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
	device/amoi/n828/permissions/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	device/amoi/n828/permissions/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	device/amoi/n828/permissions/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	device/amoi/n828/permissions/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	device/amoi/n828/permissions/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
	device/amoi/n828/permissions/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
	device/amoi/n828/permissions/com.android.location.provider.xml:system/etc/permissions/com.android.location.provider.xml \
	device/amoi/n828/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
	device/amoi/n828/permissions/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	device/amoi/n828/permissions/media_codecs.xml:system/etc/permissions/media_codecs.xml

# radvd
PRODUCT_COPY_FILES += \
    device/amoi/n828/radvd/radvd.conf:system/etc/radvd/radvd.conf

# ril
PRODUCT_COPY_FILES += \
    device/amoi/n828/ril/oper.lis:system/etc/ril/oper.lis

#voicecommand
PRODUCT_COPY_FILES += \
    device/amoi/n828/voicecommand/keyword/1.xml:system/etc/voicecommand/keyword/1.xml \
    device/amoi/n828/voicecommand/keyword/2.xml:system/etc/voicecommand/keyword/2.xml \
    device/amoi/n828/voicecommand/keyword/3.xml:system/etc/voicecommand/keyword/3.xml \
	device/amoi/n828/voicecommand/training/ubmfile/128.dat:system/etc/voicecommand/training/ubmfile/128.dat \
	device/amoi/n828/voicecommand/training/ubmfile/64.dat:system/etc/voicecommand/training/ubmfile/64.dat \
	device/amoi/n828/voicecommand/voiceui/modefile/command_3and23.dic:system/etc/voicecommand/voiceui/modefile/command_3and23.dic \
	device/amoi/n828/voicecommand/voiceui/modefile/command_6and23.dic:system/etc/voicecommand/voiceui/modefile/command_6and23.dic \
	device/amoi/n828/voicecommand/voiceui/modefile/command_only23.dic:system/etc/voicecommand/voiceui/modefile/command_only23.dic \
	device/amoi/n828/voicecommand/voiceui/modefile/commandfilr.dic:system/etc/voicecommand/voiceui/modefile/commandfilr.dic \
	device/amoi/n828/voicecommand/voiceui/modefile/commandfilr2.dic:system/etc/voicecommand/voiceui/modefile/commandfilr2.dic \
	device/amoi/n828/voicecommand/voiceui/modefile/GMMModel1.bin:system/etc/voicecommand/voiceui/modefile/GMMModel1.bin \
	device/amoi/n828/voicecommand/voiceui/modefile/GMMModel2.bin:system/etc/voicecommand/voiceui/modefile/GMMModel2.bin \
	device/amoi/n828/voicecommand/voiceui/modefile/GMMModel3.bin:system/etc/voicecommand/voiceui/modefile/GMMModel3.bin \
	device/amoi/n828/voicecommand/voiceui/modefile/Model1.bin:system/etc/voicecommand/voiceui/modefile/Model1.bin \
	device/amoi/n828/voicecommand/voiceui/modefile/Model2.bin:system/etc/voicecommand/voiceui/modefile/Model2.bin \
	device/amoi/n828/voicecommand/voiceui/modefile/Model3.bin:system/etc/voicecommand/voiceui/modefile/Model3.bin \
	device/amoi/n828/voicecommand/voiceui/modefile/Model_M_gmmfea39d.dat:system/etc/voicecommand/voiceui/modefile/Model_M_gmmfea39d.dat \
	device/amoi/n828/voicecommand/voiceui/uipattern/Chinese-Mandarin/cmd_pattern:system/etc/voicecommand/voiceui/uipattern/Chinese-Mandarin/cmd_pattern \
	device/amoi/n828/voicecommand/voiceui/uipattern/Chinese-Taiwan/cmd_pattern:system/etc/voicecommand/voiceui/uipattern/Chinese-Taiwan/cmd_pattern \
	device/amoi/n828/voicecommand/voiceui/uipattern/English/cmd_pattern:system/etc/voicecommand/voiceui/uipattern/English/cmd_pattern

# wide-dhcpv6
PRODUCT_COPY_FILES += \
    device/amoi/n828/wide-dhcpv6/dhcp6c.conf:system/etc/wide-dhcpv6/dhcp6c.conf \
	device/amoi/n828/wide-dhcpv6/dhcp6c.script:system/etc/wide-dhcpv6/dhcp6c.script \
	device/amoi/n828/wide-dhcpv6/dhcp6cctlkey:system/etc/wide-dhcpv6/dhcp6cctlkey \
	device/amoi/n828/wide-dhcpv6/dhcp6cDNS.conf:system/etc/wide-dhcpv6/dhcp6cDNS.conf \
	device/amoi/n828/wide-dhcpv6/dhcp6s.conf:system/etc/wide-dhcpv6/dhcp6s.conf

# wifi
PRODUCT_COPY_FILES += \
    device/amoi/n828/wifi/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
	device/amoi/n828/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# etc
PRODUCT_COPY_FILES += \
    device/amoi/n828/etc/agps_profiles_conf.xml:system/etc/agps_profiles_conf.xml \
	device/amoi/n828/etc/custom.conf:system/etc/custom.conf \
	device/amoi/n828/etc/disableapplist.txt:system/etc/disableapplist.txt \
	device/amoi/n828/etc/drm_chmod:system/etc/drm_chmod \
	device/amoi/n828/etc/epo_conf.xml:system/etc/epo_conf.xml \
	device/amoi/n828/etc/factory.ini:system/etc/factory.ini \
	device/amoi/n828/etc/geocoding.db:system/etc/geocoding.db \
	device/amoi/n828/etc/mtk_omx_core.cfg:system/etc/mtk_omx_core.cfg \
	device/amoi/n828/etc/mtklog-config.prop:system/etc/mtklog-config.prop \
	device/amoi/n828/etc/player.cfg:system/etc/player.cfg \
	device/amoi/n828/etc/resmonwhitelist.txt:system/etc/resmonwhitelist.txt \
	device/amoi/n828/etc/throttle.sh:system/etc/throttle.sh \
	device/amoi/n828/etc/virtual-spn-conf-by-efpnn.xml:system/etc/virtual-spn-conf-by-efpnn.xml \
	device/amoi/n828/etc/virtual-spn-conf-by-efspn.xml:system/etc/virtual-spn-conf-by-efspn.xml \
	device/amoi/n828/etc/virtual-spn-conf-by-imsi.xml:system/etc/virtual-spn-conf-by-imsi.xml \
	device/amoi/n828/etc/vold.fstab:system/etc/vold.fstab \
	device/amoi/n828/etc/vold.fstab.nand:system/etc/vold.fstab.nand \
	device/amoi/n828/etc/xlog-filter-default:system/etc/xlog-filter-default \
	device/amoi/n828/etc/xlog-filter-tags:system/etc/xlog-filter-tags

# egl
PRODUCT_COPY_FILES += \
    device/amoi/n828/egl/egl.cfg:system/lib/egl/egl.cfg

# modules
PRODUCT_COPY_FILES += \
    device/amoi/n828/modules/ccci.ko:system/lib/modules/ccci.ko \
	device/amoi/n828/modules/ccci_plat.ko:system/lib/modules/ccci_plat.ko \
	device/amoi/n828/modules/devapc.ko:system/lib/modules/devapc.ko \
	device/amoi/n828/modules/devinfo.ko:system/lib/modules/devinfo.ko \
	device/amoi/n828/modules/hid-logitech-dj.ko:system/lib/modules/hid-logitech-dj.ko \
	device/amoi/n828/modules/mtk_fm_drv.ko:system/lib/modules/mtk_fm_drv.ko \
	device/amoi/n828/modules/mtk_hif_sdio.ko:system/lib/modules/mtk_hif_sdio.ko \
	device/amoi/n828/modules/mtk_stp_bt.ko:system/lib/modules/mtk_stp_bt.ko \
	device/amoi/n828/modules/mtk_stp_gps.ko:system/lib/modules/mtk_stp_gps.ko \
	device/amoi/n828/modules/mtk_stp_uart.ko:system/lib/modules/mtk_stp_uart.ko \
	device/amoi/n828/modules/mtk_stp_wmt.ko:system/lib/modules/mtk_stp_wmt.ko \
	device/amoi/n828/modules/mtk_wmt_wifi.ko:system/lib/modules/mtk_wmt_wifi.ko \
	device/amoi/n828/modules/mtklfb.ko:system/lib/modules/mtklfb.ko \
	device/amoi/n828/modules/pvrsrvkm.ko:system/lib/modules/pvrsrvkm.ko \
	device/amoi/n828/modules/scsi_tgt.ko:system/lib/modules/scsi_tgt.ko \
	device/amoi/n828/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
	device/amoi/n828/modules/sec.ko:system/lib/modules/sec.ko \
	device/amoi/n828/modules/vcodec_kernel_driver.ko:system/lib/modules/vcodec_kernel_driver.ko \
	device/amoi/n828/modules/wlan_mt6628.ko:system/lib/modules/wlan_mt6628.ko

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_n828
PRODUCT_DEVICE := n828
