TARGET_KERNEL_CONFIG := aosp_yukon_eagle_defconfig

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/eagle/device.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common XenonHD stuff.
$(call inherit-product, vendor/xenonhd/config/common_full_phone.mk)

# Fingerprint for eagle (from stock)
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D2303
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/D2303/D2303:4.4.4/18.3.1.C.0.21/2n9_bg:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="D2303-user 18.3.1.C.0.21 2n9_bg release-keys"

# Override Product Name for CyanogenMod
PRODUCT_NAME		:= xenonhd_eagle
PRODUCT_DEVICE		:= eagle
PRODUCT_MODEL		:= Xperia M2
PRODUCT_BRAND		:= Sony
PRODUCT_MANUFACTURER	:= Sony

PRODUCT_PROPERTY_OVERRIDES += ro.xenonhd.maintainer=dadi11
