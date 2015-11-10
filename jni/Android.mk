#  Reference: http://developer.android.com/intl/zh-cn/ndk/guides/android_mk.html
#  the macro function my-dir, provided by the build system, returns the path of the current directory (the directory containing the Android.mk file itself).
LOCAL_PATH := src/c

include $(CLEAR_VARS)

LOCAL_MODULE    := native-activity
LOCAL_SRC_FILES := main.c
LOCAL_LDLIBS    := -llog -landroid -lEGL -lGLESv1_CM
LOCAL_STATIC_LIBRARIES := android_native_app_glue

include $(BUILD_STATIC_LIBRARY)

$(call import-module,android/native_app_glue)
