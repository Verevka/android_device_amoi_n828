LOCAL_PATH := $(call my-dir)

REPACK_MT65XX := device/amoi/n828/tools/repack-MT65xx.pl

INSTALLED_BOOTIMAGE_TARGET := $(PRODUCT_OUT)/boot.img

$(INSTALLED_BOOTIMAGE_TARGET): $(REPACK_MT65XX) $(INSTALLED_KERNEL_TARGET) $(TARGET_ROOT_OUT)
	$(call pretty,"Target boot image: $@")
	$(REPACK_MT65XX) -boot $(INSTALLED_KERNEL_TARGET) $(TARGET_ROOT_OUT) $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_BOOTIMAGE_PARTITION_SIZE),raw)
	@echo -e ${CL_CYN}"Made boot image: $@"${CL_RST}
