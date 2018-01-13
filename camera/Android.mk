ifeq ($(call my-dir),$(call project-path-for,qcom-camera))

ifneq ($(strip $(USE_DEVICE_SPECIFIC_CAMERA)),true)
# TODO:  Find a better way to separate build configs for ADP vs non-ADP devices
ifneq ($(TARGET_BOARD_AUTO),true)
  ifneq ($(strip $(USE_CAMERA_STUB)),true)
    ifneq ($(BUILD_TINY_ANDROID),true)
      ifneq ($(filter msm8953,$(TARGET_BOARD_PLATFORM)),)
        include $(addsuffix /Android.mk, $(addprefix $(call my-dir)/, mm-image-codec QCamera2))
      endif
    endif
  endif
endif
endif

endif
