#
# Copyright 2019 The Android Open Source Project
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

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_arm64_ab.mk)

# call the proprietary setup
$(call inherit-product-if-exists, vendor/huawei/victoria/victoria-vendor.mk)

#PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
#PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

# Local overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Boot animation
TARGET_SCREEN_HEIGHT := 1920 
TARGET_SCREEN_WIDTH := 1080

# Lawnchair
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/prebuilt/etc/permissions/privapp-permissions-lawnchair.xml:system/etc/permissions/privapp-permissions-lawnchair.xml \
#    $(LOCAL_PATH)/prebuilt/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml:system/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml

#PRODUCT_PACKAGES += \
#    Lawnchair


# Inherit from hi3660-common
$(call inherit-product, device/huawei/hi3660-common/hi3660.mk)
