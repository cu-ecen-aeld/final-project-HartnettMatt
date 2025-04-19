
##############################################################
#
# HCSR04_TEST
#
##############################################################

HCSR04_TEST_VERSION = '06ab0415ccbc55e4c19fcb6eab1d513e21e4425e'
HCSR04_TEST_SITE = 'git@github.com:HartnettMatt/AdvancedEmbeddedSoftware.git'
HCSR04_TEST_SITE_METHOD = git
HCSR04_TEST_GIT_SUBMODULES = YES
HCSR04_TEST_MODULE_SUBDIRS = final-project/driver/hcsr04_test
HCSR04_TEST_DEPENDENCIES = libdriver_hcsr04 libgpiod2

define HCSR04_TEST_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/$(HCSR04_TEST_MODULE_SUBDIRS) all
endef

define HCSR04_TEST_INSTALL_TARGET_CMDS
	$(INSTALL) -d 0755 $(@D)/$(HCSR04_TEST_MODULE_SUBDIRS)/ $(TARGET_DIR)/usr/bin/hcsr04_test
	$(INSTALL) -m 0755 $(@D)/$(HCSR04_TEST_MODULE_SUBDIRS)/* $(TARGET_DIR)/usr/bin/hcsr04_test
endef

$(eval $(generic-package))