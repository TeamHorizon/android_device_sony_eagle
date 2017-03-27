TARGET_KERNEL_CONFIG := aosp_yukon_eagle_defconfig

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/eagle/device.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common XenonHD stuff.
$(call inherit-product, vendor/xenonhd/config/common_full_phone.mk)

# Override Product Name for XenonHD
BOARD_VENDOR := Sony
PRODUCT_NAME := xenonhd_eagle
PRODUCT_DEVICE := eagle
PRODUCT_MODEL := XPERIA M2
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
TARGET_VENDOR := Sony

# Use the latest approved GMS identifiers unless running a signed build
# Fingerprint for eagle (from stock 5.1)
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Sony/D2303/D2303:5.1.1/18.6.A.0.182/1807889774:user/release-keys \
    PRIVATE_BUILD_DESC="D2303-user 5.1.1 18.6.A.0.182 1807889774 release-keys"
endif

PRODUCT_GMS_CLIENTID_BASE := android-sonyericsson

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=D2303 \
    PRODUCT_DEVICE=D2303 \
    BUILD_PRODUCT=D2303

PRODUCT_PROPERTY_OVERRIDES += ro.xenonhd.maintainer=dadi11

# Assert
TARGET_OTA_ASSERT_DEVICE := D2302,D2303,D2305,D2306,D2403,D2406,eagle
