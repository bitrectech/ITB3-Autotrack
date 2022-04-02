## MAIN MakeFile
SRC_DIR:=$(abspath $(dir $(lastword $(MAKEFILE_LIST))))
BUILD_DIR:=$(SRC_DIR)/build

.PHONY: build-itb3-maixbit menuconfig upload

build-itb3-maixbit:

menuconfig:
	cd $(SRC_DIR)/nuttx/nuttx \
	&& $(MAKE) menuconfig \

upload:
    kflash -p /dev/ttyUSB0 /$(BUILD_DIR)/itb3-fireware.bin