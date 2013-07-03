#!/bin/bash

FILE_RASPBIAN_IMG="../bakeqtpi/opt/2012-07-15-wheezy-raspbian.img"
DIR_MOUNT="../bakeqtpi/opt/rasp-pi-rootfs"

if [ -e ${FILE_RASPBIAN_IMG} ]; then
	sudo mount -o loop,offset=62914560 ${FILE_RASPBIAN_IMG} ${DIR_MOUNT}
fi
exit
