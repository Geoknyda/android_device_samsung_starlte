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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/starlte/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := starlte
PRODUCT_NAME := lineage_starlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G960F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

BUILD_FINGERPRINT := samsung/starltexx/starlte:10/QP1A.190711.020/G960FXXUCFTK1:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=starltexx \
    PRIVATE_BUILD_DESC="starltexx-user 10 QP1A.190711.020 G960FXXUCFTK1 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.PDA=G960FXXUCFTK1
    #
    # BATTERY SAVER
    #
    wifi.supplicant_scan_interval=300
    pm.sleep_mode=1
    power.saving.mode=1
    ro.ril.disable.power.collapse=0
    ro.config.hw_power_saving=1
    power_supply.wakeup=enable
    ro.mot.eri.losalert.delay=1000
    ro.config.hw_fast_dormancy=1
    debug.performance.tuning=1
    debug.composition.type=hw
    debug.sf.hw=1
    profiler.force_disable_ulog=true
    profiler.force_disable_err_rpt=true
    profiler.force_disable_err_rpt=1
    profiler.force_disable_ulog=1
    ro.vold.umsdirtyratio=20
    dalvik.vm.checkjni=false
    dalvik.vm.execution-mode=int:jit
    video.accelerate.hw=1
    
PRODUCT_PROPERTY_OVERRIDES += \
    lineage.updater.uri=https://raw.githubusercontent.com/Geoknyda/OTA/lineage-18.1/starlte.json
