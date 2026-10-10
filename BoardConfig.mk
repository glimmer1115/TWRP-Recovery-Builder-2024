# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_VARIANT := generic

# Bootloader
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 androidboot.boottime=0 androidboot.hardware=gtaxldwifikx

# Kernel
BOARD_KERNEL_BASE := 0x80008000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00000100

# Ramdisk
BOARD_RAMDISK_OFFSET := 0x00008000
BOARD_RAMDISK_SIZE := 32*1024*1024

# Boot Image
BOARD_BOOTIMAGE_SIZE := 32*1024*1024
# 수정된 부분: 괄호 및 띄어쓰기 문법 오류 해결
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# Device Specifics
BOARD_USES_NAND := false
BOARD_HAS_MTK_HARDWARE := false

# Storage / Partitioning
# (참고: 실제 파티션 크기는 장치의 실제 layout에 맞춰 추가 조정이 필요할 수 있습니다)
BOARD_FLASH_BLOCK_SIZE := 131072
