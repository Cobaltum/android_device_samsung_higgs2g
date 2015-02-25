USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/higgs2g/BoardConfigVendor.mk

TARGET_OTA_ASSERT_DEVICE := higgs2g

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Board
TARGET_BOOTLOADER_BOARD_NAME := higgs2g
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Platform
TARGET_BOARD_PLATFORM := scx15

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8
BOARD_KERNEL_BASE := 0x8000
BOARD_KERNEL_PAGESIZE := 2048
HAS_PREBUILT_KERNEL := true
##TARGET_KERNEL_SOURCE := kernel/samsung/higgs2g           //Not using source as of now
##TARGET_KERNEL_CONFIG := cyanogenmod_higgs2g_defconfig    //Using a prebuilt kernel 
#BOARD_USES_UNCOMPRESSED_BOOT := true
TARGET_PREBUILT_KERNEL := device/samsung/higgs2g/kernel

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x800000
BOARD_CACHEIMAGE_PARTITION_SIZE := 
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x42400000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x92800000
# (BOARD_KERNEL_PAGESIZE * 64)
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Partition Mountpoints
BOARD_RECOVERY_DEVICE := /dev/block/mmcblk0p12
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p18
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p17
BOARD_CACHE_FILESYSTEM := ext4
BOARD_DATA_DEVICE := /dev/block/mmcblk0p20
BOARD_DATA_FILESYSTEM := ext4

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
DEVICE_RESOLUTION := 480x800
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800
##BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/higgs2g/recovery/recovery_keys.c
TARGET_RECOVERY_INITRC := device/samsung/higgs2g/recovery/recovery.rc
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/higgs2g/recovery/graphics.c
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_RECOVERY_FSTAB := device/samsung/higgs2g/recovery.fstab
BOARD_SUPPRESS_EMMC_WIPE := true
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.debuggable=1 \
service.adb.root=1
