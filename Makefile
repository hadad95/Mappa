INSTALL_TARGET_PROCESSES = SpringBoard

ARCHS=arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Mappa

Mappa_FILES = Tweak.x
Mappa_CFLAGS = -fobjc-arc
Mappa_EXTRA_FRAMEWORKS += Cephei

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += mappa
include $(THEOS_MAKE_PATH)/aggregate.mk
