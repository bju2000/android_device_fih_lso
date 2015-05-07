USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/infocus/lso/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8226
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := lso

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_CUSTOM_BOOTIMG_MK := device/infocus/lso/mkbootimg.mk

# fix this up by examining /proc/mtd on a running device
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_SUPPRESS_EMMC_WIPE := true

TARGET_PREBUILT_KERNEL := device/infocus/lso/kernel

#  Recovery
TARGET_SCREEN_WIDTH :=720
TARGET_SCREEN_HEIGHT :=1280
#TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun%d/file"
DEVICE_RESOLUTION := 720x1280
BOARD_RECOVERY_SWIPE := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun%d/file"
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_HAS_NO_SELECT_BUTTON := true
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"fontcn28_15x40.h\"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_RECOVERY_FSTAB := device/infocus/lso/recovery/fstab.qcom
TARGET_RECOVERY_INITRC := device/infocus/lso/recovery/init.rc
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/infocus/lso/recovery/recovery_keys.c
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_8888"

# pul
BOARD_HAS_LOW_RESOLUTION := true
BRIGHTNESS_SYS_FILE := 100
RECOVERY_USE_VIRTUAL_KEY :=true

# Hack for build
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)