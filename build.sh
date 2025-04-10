#!/bin/bash
#Script to build buildroot configuration
#Author: Matt Hartnett

EXTERNAL_REL_BUILDROOT=../base_external
git submodule init
git submodule sync
git submodule update

set -e

source shared.sh

cd "$(dirname "$0")/buildroot"

if [ ! -f "$DEFCONFIG_PATH" ]; then
    echo "Error: defconfig not found at $DEFCONFIG_PATH"
    exit 1
fi

make BR2_DEFCONFIG="$DEFCONFIG_PATH" defconfig
make

#if [ ! -e buildroot/.config ]
#then
#	echo "MISSING BUILDROOT CONFIGURATION FILE"
#
#	if [ -e ${AESD_MODIFIED_DEFCONFIG} ]
#	then
#		echo "USING ${AESD_MODIFIED_DEFCONFIG}"
#		make -C buildroot defconfig BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT} BR2_DEFCONFIG=${AESD_MODIFIED_DEFCONFIG_REL_BUILDROOT}
#	else
#		echo "Run ./save_config.sh to save this as the default configuration in ${AESD_MODIFIED_DEFCONFIG}"
#		echo "Then add packages as needed to complete the installation, re-running ./save_config.sh as needed"
#		make -C buildroot defconfig BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT} BR2_DEFCONFIG=${AESD_DEFAULT_DEFCONFIG}
#	fi
#else
#	echo "USING EXISTING BUILDROOT CONFIG"
#	echo "To force update, delete .config or make changes using make menuconfig and build again."
#	make -C buildroot BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT}
#
#fi
