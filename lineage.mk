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
PRODUCT_RELEASE_NAME := pri6750_66_n
# Inherit device configuration
$(call inherit-product, device/uhans/pri6750_66_n/full_pri6750_66_n.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := pri6750_66_n
PRODUCT_NAME := lineage_pri6750_66_n
PRODUCT_BRAND := UHANS
PRODUCT_MODEL := Max2
PRODUCT_MANUFACTURER := UHANS

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="alps/full_pri6750_66_n/pri6750_66_n:7.0/NRD90M/1514021565:user/release-keys" \
    PRIVATE_BUILD_DESC="full_pri6750_66_n-user 7.0 NRD90M 1514021565 release-keys"

#PRODUCT_GMS_CLIENTID_BASE := android-lechpol
