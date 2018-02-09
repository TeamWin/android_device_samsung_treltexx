LOCAL_PATH := $(call my-dir)

ifeq ($(TW_EXCLUDE_DEFAULT_USB_INIT), true)

include $(CLEAR_VARS)
LOCAL_MODULE := init.recovery.usb.rc
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES

# Cannot send to TARGET_RECOVERY_ROOT_OUT since build system wipes init*.rc
# during ramdisk creation and only allows init.recovery.*.rc files to be copied
# from TARGET_ROOT_OUT thereafter
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)

LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

endif