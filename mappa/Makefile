include $(THEOS)/makefiles/common.mk

ARCHS=arm64 arm64e

BUNDLE_NAME = Mappa

Mappa_FILES = MPRootListController.m
Mappa_INSTALL_PATH = /Library/PreferenceBundles
Mappa_FRAMEWORKS = UIKit
Mappa_PRIVATE_FRAMEWORKS = Preferences
Mappa_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/Mappa.plist$(ECHO_END)
