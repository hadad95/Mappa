INSTALL_TARGET_PROCESSES = SpringBoard
ARCHS=arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BetterFolders

BetterFolders_FILES = Tweak.x
BetterFolders_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += betterfolders
include $(THEOS_MAKE_PATH)/aggregate.mk
