include $(THEOS)/makefiles/common.mk
ARCHS=arm64 arm64e

BUNDLE_NAME = BetterFolders

BetterFolders_FILES = BFRootListController.m
BetterFolders_INSTALL_PATH = /Library/PreferenceBundles
BetterFolders_FRAMEWORKS = UIKit
BetterFolders_PRIVATE_FRAMEWORKS = Preferences
BetterFolders_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/BetterFolders.plist$(ECHO_END)
