LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := sdl_mixer

LOCAL_CFLAGS := -I$(LOCAL_PATH) -I$(LOCAL_PATH)/.. -I$(LOCAL_PATH)/../sdl/include \
					-DWAV_MUSIC -DOGG_USE_TREMOR -DOGG_MUSIC

LOCAL_CPP_EXTENSION := .cpp

LOCAL_SRC_FILES := $(notdir $(wildcard $(LOCAL_PATH)/*.c))

LOCAL_SHARED_LIBRARIES := sdl tremor

include $(BUILD_SHARED_LIBRARY)

