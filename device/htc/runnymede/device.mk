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
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/htc/runnymede/media_htcaudio.mk)
$(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)
$(call inherit-product, device/htc/runnymede/media_a1026.mk)

#prebuilt-apps
PRODUCT_COPY_FILES += \
    device/htc/runnymede/configs/gps.conf:system/etc/gps.conf


DEVICE_PACKAGE_OVERLAYS += device/htc/runnymede/overlay

# Inherit the proprietary files for htc sensation xl
$(call inherit-product, vendor/htc/runnymede/runnymede-vendor.mk)

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

# ramdisk
PRODUCT_COPY_FILES += \
    device/htc/runnymede/ramdisk/default.prop:root/default.prop \
    device/htc/runnymede/ramdisk/fstab.runnymede:root/fstab.runnymede \
    device/htc/runnymede/ramdisk/init.runnymede.rc:root/init.runnymede.rc \
    device/htc/runnymede/ramdisk/init.usb.rc:root/init.usb.rc \
    device/htc/runnymede/ramdisk/init.rc:root/init.rc \
    device/htc/runnymede/ramdisk/ueventd.runnymede.rc:root/ueventd.runnymede.rc

# Telephony configs
PRODUCT_COPY_FILES += \
    device/htc/runnymede/voicemail-conf.xml:system/etc/voicemail-conf.xml \
    vendor/cm/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Audio configs
PRODUCT_COPY_FILES += \
    device/htc/runnymede/dsp/soundimage/Sound_Original_Recording_BCLK.txt:system/etc/soundimage/Sound_Original_Recording_BCLK.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Phone_Original_SPK_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_SPK_BCLK.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Phone_Original_REC_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_REC_BCLK.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Phone_Original_HP_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_HP_BCLK.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Phone_Original_REC_NEL.txt:system/etc/soundimage/Sound_Phone_Original_REC_NEL.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Phone_Original_REC_WB.txt:system/etc/soundimage/Sound_Phone_Original_REC_WB.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Phone_Original_SPK_WB.txt:system/etc/soundimage/Sound_Phone_Original_SPK_WB.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Phone_Original_HP_WB.txt:system/etc/soundimage/Sound_Phone_Original_HP_WB.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Original_SPK_BCLK.txt:system/etc/soundimage/Sound_Original_SPK_BCLK.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Original_SPK_MFG.txt:system/etc/soundimage/Sound_Original_SPK_MFG.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Recording_Mono.txt:system/etc/soundimage/Sound_Recording_Mono.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Original_BCLK.txt:system/etc/soundimage/Sound_Original_BCLK.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/runnymede/dsp/soundimage/Sound_VoIP_HP.txt:system/etc/soundimage/Sound_VoIP_HP.txt

# Key layout configs
PRODUCT_COPY_FILES += \
    device/htc/runnymede/keylayout/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    device/htc/runnymede/keylayout/keylayout/runnymede-keypad.kl:system/usr/keylayout/runnymede-keypad.kl \
    device/htc/runnymede/keylayout/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/runnymede/keylayout/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/htc/runnymede/keylayout/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl
PRODUCT_COPY_FILES += \
    device/htc/runnymede/keylayout/keychars/atmel-touchscreen.kcm:system/usr/keychars/atmel-touchscreen.kcm \
    device/htc/runnymede/keylayout/keychars/Generic.kcm:system/usr/keychars/Generic.kcm
PRODUCT_COPY_FILES += \
    device/htc/runnymede/keylayout/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc


# Build Settings
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_TAGS += dalvik.gc.type-precise
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_NAME := cm_runnymede
PRODUCT_LOCALES += en
