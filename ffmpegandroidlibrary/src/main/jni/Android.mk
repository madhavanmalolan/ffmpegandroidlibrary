LOCAL_PATH := $(call my-dir)
#$(warning $(LOCAL_PATH))

include $(CLEAR_VARS)
LOCAL_MODULE    := libffmpeg
LOCAL_LDLIBS := -llog -ljnigraphics -lz -landroid
LOCAL_CFLAGS := -Wdeprecated-declarations
ANDROID_LIB := -landroid
LOCAL_C_INCLUDES:=./ffmpeg
LOCAL_SRC_FILES :=  ffmpeg_controller.c ffmpeg.c ffmpeg_filter.c ffmpeg_opt.c cmdutils.c
LOCAL_SHARED_LIBRARIES := libavformat libavcodec libswscale libavutil libswresample libavfilter libavdevice

include $(BUILD_SHARED_LIBRARY)
$(call import-module,ffmpeg/android/arm)
