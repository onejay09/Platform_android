#
# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

PRODUCT_COPY_FILES += \
    device/htc/msm7x30-common/init.htc7x30.usb.rc:root/init.htc7x30.usb.rc

# Common 7x30 firmware
PRODUCT_COPY_FILES += \
    device/htc/msm7x30-common/firmware/vidc_720p_command_control.fw:system/etc/firmware/vidc_720p_command_control.fw \
    device/htc/msm7x30-common/firmware/vidc_720p_h263_dec_mc.fw:system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/htc/msm7x30-common/firmware/vidc_720p_h264_dec_mc.fw:system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/htc/msm7x30-common/firmware/vidc_720p_h264_enc_mc.fw:system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/htc/msm7x30-common/firmware/vidc_720p_mp4_dec_mc.fw:system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/htc/msm7x30-common/firmware/vidc_720p_mp4_enc_mc.fw:system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/htc/msm7x30-common/firmware/vidc_720p_vc1_dec_mc.fw:system/etc/firmware/vidc_720p_vc1_dec_mc.fw

# media configs
PRODUCT_COPY_FILES += \
    device/htc/msm7x30-common/media_profiles.xml:system/etc/media_profiles.xml \
    device/htc/msm7x30-common/media_codecs.xml:system/etc/media_codecs.xml \
    device/htc/msm7x30-common/audio_policy.conf:system/etc/audio_policy.conf


PRODUCT_PACKAGE_OVERLAYS += device/htc/msm7x30-common/overlay

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm7x30 \
    audio_policy.msm7x30 \
    libaudioutils \
    libtinyalsa \
    libaudio-resampler \
    audio_policy.conf

#wireless
PRODUCT_PACKAGES += \
    brcm_patchram_plus \
    libnetcmdiface

# Media
PRODUCT_PACKAGES += \
    lights.runnymede \
    copybit.msm7x30 \
    gralloc.msm7x30 \
    hwcomposer.msm7x30 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer \
    libdashplayer \
    power.msm7x30 \
    libOmxCore \
    libOmxVenc \
    libmm-omxcore \
    libdivxdrmdecrypt \
    libOmxVdec \
    libstagefrighthw

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    libsurfaceflinger_client

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Gps setup
PRODUCT_PACKAGES += \
    libbt-vendor \
    librpc \
    gps.msm7x30

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    FileManager \
    e2fsck \
    setup_fs \
    memtrack

# Extra apps
PRODUCT_PACKAGES += \
    SoundRecorder \
    CMFileManager \
    Launcher3    \
    Torch \
    RunnyParts

# Override settings of build.prop, in system.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    debug.composition.type=gpu \
    ro.sys.fw.bg_apps_limit=12 \
    debug.sf.hw=1 \
    debug.hwc.fakevsync=1 \
    debug.egl.hw=1 \
    debug.mdpcomp.logs=0 \
    debug.sf.no_hw_vsync=1 \
    ro.zygote.disable_gl_preload=true \
    debug.hwui.render_dirty_regions=false \
    persist.webview.provider=classic \
    dalvik.vm.dexopt-flags=m=y \
    ro.setupwizard.enable_bypass=1 \
    persist.sys.dun.override=0 \
    debug.mdpcomp.logs=0 \
    ro.setupwizard.enterprise_mode=1 \
    ro.setupwizard.enable_bypass=1 \
    ro.com.google.locationfeatures=1 \
    ro.com.google.gmsversion=2.3_r3 \
    persist.sys.scrollingcache=3 \
    ro.vold.umsdirtyratio=20 \
    persist.service.zram=1

# Override settings of default.prop, in the ramdisk.
PRODUCT_DEFAULT_PROPERTY_OVERRIDES := \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.allow.mock.location=0 \
    ro.debuggable=1 \
    persist.sys.usb.config=adb \
    persist.sys.root_access=3
