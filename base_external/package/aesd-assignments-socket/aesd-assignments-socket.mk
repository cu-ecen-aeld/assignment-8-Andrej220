
##############################################################
#
# AESD-ASSIGNMENTS-SOCKET
#0eedf304b6f2aaee29fb60a849fc2a370cfc9f9a
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_ASSIGNMENTS_SOCKET_VERSION = d5fa99dbfb2fd9546ee729ce8569e3bd99ca51e9
#'#COMMIT VERSION NUMBER'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_ASSIGNMENTS_SOCKET_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-Andrej220.git
#AESD_ASSIGNMENTS_SOCKET_OVERRIDE_SRCDIR = $(TOPDIR)/../server
#'#GITHUB REPOSITORY LINK'
AESD_ASSIGNMENTS_SOCKET_SITE_METHOD = git
AESD_ASSIGNMENTS_SOCKET_GIT_SUBMODULES = YES

define AESD_ASSIGNMENTS_SOCKET_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_ASSIGNMENTS_SOCKET_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket-start-stop $(TARGET_DIR)/etc/init.d/S99aesdsocket
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin

endef

$(eval $(generic-package))
