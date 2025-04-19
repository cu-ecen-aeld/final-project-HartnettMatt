
##############################################################
#
# WHITEBOARD_WIPER
#
##############################################################

WHITEBOARD_WIPER_VERSION = '6facc6b1fe7785573f8cb9db413c5d62dd23aaa8'
WHITEBOARD_WIPER_SITE = 'git@github.com:HartnettMatt/AdvancedEmbeddedSoftware.git'
WHITEBOARD_WIPER_SITE_METHOD = git
WHITEBOARD_WIPER_GIT_SUBMODULES = YES
WHITEBOARD_WIPER_MODULE_SUBDIRS = final-project/driver/whiteboard_wiper
WHITEBOARD_WIPER_DEPENDENCIES = libdriver_hcsr04 libgpiod2

define WHITEBOARD_WIPER_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/$(WHITEBOARD_WIPER_MODULE_SUBDIRS) all
endef

define WHITEBOARD_WIPER_INSTALL_TARGET_CMDS
	rm -rf $(TARGET_DIR)/usr/bin/whiteboard_wiper
	$(INSTALL) -d 0755 $(@D)/$(WHITEBOARD_WIPER_MODULE_SUBDIRS)/ $(TARGET_DIR)/usr/bin/whiteboard_wiper
# 	$(INSTALL) -m 0755 $(@D)/$(WHITEBOARD_WIPER_MODULE_SUBDIRS)/whiteboard_wiper $(TARGET_DIR)/usr/bin/whiteboard_wiper
	cp -r $(@D)/$(WHITEBOARD_WIPER_MODULE_SUBDIRS)/*  $(TARGET_DIR)/usr/bin/whiteboard_wiper/
	chmod -R 0755 $(TARGET_DIR)/usr/bin/whiteboard_wiper
endef

$(eval $(generic-package))