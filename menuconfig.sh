#!/bin/bash
# Script to access menuconfig
#Author: Matt Hartnett

EXTERNAL_REL_BUILDROOT=../base_external
git submodule init
git submodule sync
git submodule update

set -e

source shared.sh

cd "$(dirname "$0")/buildroot"

make BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT} menuconfig