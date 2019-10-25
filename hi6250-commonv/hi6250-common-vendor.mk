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

# This file is generated by device/huawei/hi6250-common/setup-makefiles.sh

PRODUCT_COPY_FILES += \
    vendor/huawei/hi6250-common/proprietary/etc/libnfc_brcm_figo_LX1.conf:system/etc/libnfc-brcm.conf \
    vendor/huawei/hi6250-common/proprietary/etc/libnfc-nci.conf:system/etc/libnfc-nci.conf \
    vendor/huawei/hi6250-common/proprietary/etc/libnfc_nxp_figo_LX1.conf:system/etc/libnfc-nxp.conf \
    vendor/huawei/hi6250-common/proprietary/etc/libnfc-nxp_RF.conf:system/etc/libnfc-nxp_RF.conf \
    vendor/huawei/hi6250-common/proprietary/ons.bin:system/ons.bin \
    vendor/huawei/hi6250-common/proprietary/lib64/libaptXHD_encoder.so:system/lib64/libaptXHD_encoder.so \
    vendor/huawei/hi6250-common/proprietary/lib64/libaptX_encoder.so:system/lib64/libaptX_encoder.so

PRODUCT_PACKAGES += \
    HotwordEnrollmentOKGoogleHI6403 \
    HotwordEnrollmentXGoogleHI6403 \
    chargeonlymode