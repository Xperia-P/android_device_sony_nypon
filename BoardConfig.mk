# Inherit from the proprietary version
-include vendor/sony/nypon/BoardConfigVendor.mk

# Inherit from the common montblanc definitions
-include device/sony/montblanc-common/BoardConfigCommon.mk

# Target device Specific headers
TARGET_SPECIFIC_HEADER_PATH += device/sony/nypon/include

# Kernel Config
TARGET_KERNEL_CONFIG := xperiap_defconfig

#HDMI
COMMON_GLOBAL_CFLAGS += -DSTE_HDMI

BOARD_HAS_NO_REAL_SDCARD := true
BOARD_HAS_SDCARD_INTERNAL := true
TARGET_RECOVERY_FSTAB := device/sony/nypon/config/fstab.st-ericsson

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 16

DEVICE_RESOLUTION :=540x960
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000
BOARD_CMDLINE := cachepolicy=writealloc noinitrd init=init board_id=1 root=/dev/ram0 rw rootwait console=ttyAMA2,115200n8 androidboot.console=ttyAMA2 androidboot.hardware=st-ericsson mem=96M@0 mem_mtrace=15M@96M mem_mshared=1M@111M mem_modem=16M@112M mem=32M@128M mem_issw=1M@160M hwmem=167M@161M mem=696M@328M vmalloc=384M mpcore_wdt.mpcore_margin=359

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1056964608
BOARD_USERDATA_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_FORCE_KERNEL_ADDRESS  := 0x00008000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000

#BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p14

TARGET_OTA_ASSERT_DEVICE := LT22i,LT22a,nypon

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT22i_1261-7821 BUILD_FINGERPRINT=SEMC/LT22i_1261-7821/LT22i:4.1.2/6.2.A.1.100/m_v_zg:user/release-keys PRIVATE_BUILD_DESC="LT22i-user 4.1.2 6.2.A.1.100 m_v_zg test-keys"
