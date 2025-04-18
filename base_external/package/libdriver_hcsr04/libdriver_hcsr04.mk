################################################################################
# libdriver‑hcsr04
################################################################################
LIBDRIVER_HCSR04_VERSION = '668923aeb667e2b7aeb90ff347624b02b6600597'
LIBDRIVER_HCSR04_SITE    = git@github.com:libdriver/hcsr04.git
LIBDRIVER_HCSR04_SITE_METHOD = git
LIBDRIVER_HCSR04_GIT_SUBMODULES = YES
LIBDRIVER_HCSR04_LICENSE = MIT
LIBDRIVER_HCSR04_LICENSE_FILES = LICENSE
LIBDRIVER_HCSR04_INSTALL_STAGING = YES

define LIBDRIVER_HCSR04_BUILD_CMDS
	$(TARGET_CC) $(TARGET_CFLAGS) -I$(@D)/interface \
		-c $(@D)/src/driver_hcsr04.c -o $(@D)/driver_hcsr04.o
	$(TARGET_AR) rcs $(@D)/libdriver_hcsr04.a $(@D)/driver_hcsr04.o
endef

define LIBDRIVER_HCSR04_INSTALL_STAGING_CMDS
	$(INSTALL) -D -m 644 $(@D)/libdriver_hcsr04.a \
		$(STAGING_DIR)/usr/lib/libdriver_hcsr04.a
	$(INSTALL) -D -m 644 $(@D)/src/driver_hcsr04.h \
		$(STAGING_DIR)/usr/include/driver_hcsr04.h
	$(INSTALL) -D -m 644 $(@D)/interface/driver_hcsr04_interface.h \
		$(STAGING_DIR)/usr/include/driver_hcsr04_interface.h
endef

define LIBDRIVER_HCSR04_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 644 $(@D)/libdriver_hcsr04.a \
		$(TARGET_DIR)/usr/lib/libdriver_hcsr04.a
	$(INSTALL) -D -m 644 $(@D)/src/driver_hcsr04.h \
		$(TARGET_DIR)/usr/include/driver_hcsr04.h
	$(INSTALL) -D -m 644 $(@D)/interface/driver_hcsr04_interface.h \
		$(TARGET_DIR)/usr/include/driver_hcsr04_interface.h
endef

$(eval $(generic-package))
