ifneq ($(filter msm8960 msm8660 msm7x30,$(TARGET_BOARD_PLATFORM)),)
ifeq ($(TARGET_QCOM_MEDIA_VARIANT),caf)

include $(call all-subdir-makefiles)

endif
endif

