
##############################################################
#
# GPIO_TEST
#
##############################################################

GPIO_TEST_VERSION = '6cdb0e69be6b10a1c346a62349fb4fb5f5f6e64c'
GPIO_TEST_SITE = 'git@github.com:HartnettMatt/AdvancedEmbeddedSoftware.git'
GPIO_TEST_SITE_METHOD = git
GPIO_TEST_GIT_SUBMODULES = YES
GPIO_TEST_MODULE_SUBDIRS = final-project/driver/gpio_test

define GPIO_TEST_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/$(GPIO_TEST_MODULE_SUBDIRS) all
endef

define GPIO_TEST_INSTALL_TARGET_CMDS
	$(INSTALL) -d 0755 $(@D)/$(GPIO_TEST_MODULE_SUBDIRS)/ $(TARGET_DIR)/usr/bin/gpio_test
	$(INSTALL) -m 0755 $(@D)/$(GPIO_TEST_MODULE_SUBDIRS)/* $(TARGET_DIR)/usr/bin/gpio_test
endef

$(eval $(generic-package))