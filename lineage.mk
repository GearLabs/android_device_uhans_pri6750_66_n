#
# Copyright (C) 2018 The LineageOS Project
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

# Release name
PRODUCT_RELEASE_NAME := f5c62w
# Inherit device configuration
$(call inherit-product, device/leagoo/f5c62w/full_f5c62w.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := f5c62w
PRODUCT_NAME := lineage_f5c62w
PRODUCT_BRAND := Kruger_Matz
PRODUCT_MODEL := FLOW5PLUS
PRODUCT_MANUFACTURER := KrugerMatz

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Kruger_Matz/FLOW_5PLUS/FLOW5PLUS:7.0/NRD90M/1498795228:user/release-keys" \
    PRIVATE_BUILD_DESC="full_f5c62w_leagoo3_cts-user 7.0 NRD90M 1504523450 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-lechpol
