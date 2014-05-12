USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/ivoryss/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := bcm21654
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_CPU_VARIANT := cortex-a9
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := ivoryss

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x82000000
BOARD_KERNEL_PAGESIZE := 4096

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00800000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x38000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x8547BC00
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/samsung/ivoryss/kernel
TARGET_KERNEL_SOURCE := kernel/samsung/ivoryss
TARGET_KERNEL_CONFIG := cyanogenmod_ivoryss_defconfig

BOARD_HAS_NO_SELECT_BUTTON := true

# OpenGL drivers config file path
BOARD_EGL_CFG := device/samsung/ivoryss/egl.cfg

USE_OPENGL_RENDERER := true

BOARD_USES_ALSA_AUDIO := true

# Enable Bluetooth 
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

#recovery
TARGET_RECOVERY_INITRC := device/samsung/ivoryss/recovery/init.rc
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

#twrp
DEVICE_RESOLUTION := 240x240
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true

TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"

TW_CUSTOM_POWER_BUTTON := 107
TW_INCLUDE_INJECTTWRP := true
TWRP_EVENT_LOGGING := false

PRODUCT_COPY_FILES += device/samsung/ivoryss/twrp.fstab:recovery/root/etc/twrp.fstab