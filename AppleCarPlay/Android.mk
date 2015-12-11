LOCAL_PATH := $(call my-dir)

ifeq ($(PRODUCT_DEFINE), CIVIA3C11)
include $(call all-makefiles-under, $(LOCAL_PATH)/3c11)
#include $(LOCAL_PATH)/3c11/app/Android.mk
#include $(LOCAL_PATH)/3c11/lib/Android.mk
else ifeq ($(PRODUCT_DEFINE), CIVIA3C15)
include $(call all-makefiles-under, $(LOCAL_PATH)/3c15)
#include $(LOCAL_PATH)/3c15/app/Android.mk
#include $(LOCAL_PATH)/3c15/lib/Android.mk
endif

