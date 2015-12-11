LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
# Module name should match apk name to be installed.

LOCAL_MODULE := AppleCarPlay
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
#  LOCAL_MODULE_TAGS := user

LOCAL_MODULE_PATH := $(TARGET_OUT_APPS)
#LOCAL_MODULE_PATH := $(TARGET_OUT_DATA_APPS)

LOCAL_CERTIFICATE := PRESIGNED

LOCAL_REQUIRED_MODULES := libcarplayapl_jni \
                          libcplayer \
                          libdns_sd \
                          AppleCarPlaySvc \
                          cmdproxy \
                          mdnsd_ns \
#                          ncm \

include $(BUILD_PREBUILT)

