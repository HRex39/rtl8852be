ifeq ($(CONFIG_PLATFORM_RTK1319), y)
EXTRA_CFLAGS += -DCONFIG_LITTLE_ENDIAN
EXTRA_CFLAGS += -DCONFIG_IOCTL_CFG80211 -DRTW_USE_CFG80211_STA_EVENT
EXTRA_CFLAGS += -DCONFIG_RADIO_WORK
EXTRA_CFLAGS += -DCONFIG_CONCURRENT_MODE

EXTRA_CFLAGS += -DRTK_1319_PLATFORM -DCONFIG_RF4CE_COEXIST
#EXTRA_CFLAGS += -Wno-error=date-time

# CONFIG_RTW_ANDROID - 0: no Android, 4/5/6/7/8/9/10/11 : Android version
CONFIG_RTW_ANDROID = 11

ifeq ($(shell test $(CONFIG_RTW_ANDROID) -gt 0; echo $$?), 0)
EXTRA_CFLAGS += -DCONFIG_RTW_ANDROID=$(CONFIG_RTW_ANDROID)
endif

ifeq ($(shell test $(CONFIG_RTW_ANDROID) -ge 11; echo $$?), 0)
EXTRA_CFLAGS += -DCONFIG_IFACE_NUMBER=3
EXTRA_CFLAGS += -DCONFIG_SEL_P2P_IFACE=1
endif

ARCH ?= arm
# For Android 10
#CROSS_COMPILE :=/sweethome/zhenrc/Workshop/1619/atv-9.0/phoenix/toolchain/asdk-6.4.1-a53-EL-4.9-g2.26-a32nut-180831/bin/arm-linux-gnueabi-
#KSRC :=/sweethome/zhenrc/Workshop/1619/atv-9.0/hydra/linux-kernel-1319

# For TV image
#CROSS_COMPILE :=/sweethome/zhenrc/Workshop/1619/atv-9.0/phoenix/toolchain/asdk-6.4.1-a53-EL-4.9-g2.26-a32nut-180831/bin/arm-linux-gnueabi-
#KSRC := /sweethome/zhenrc/Workshop/1319/q_tv_kernel_ax

# For Cert TV image
CROSS_COMPILE :=/sweethome/zhenrc/Workshop/1619/atv-9.0/phoenix/toolchain/asdk-6.4.1-a53-EL-4.9-g2.26-a32nut-180831/bin/arm-linux-gnueabi-
KSRC := /sweethome/zhenrc/Workshop/1319/cert_q_tv_kernel_ax

ifeq ($(CONFIG_PCI_HCI), y)
EXTRA_CFLAGS += -DCONFIG_PLATFORM_OPS
_PLATFORM_FILES := platform/platform_linux_pc_pci.o
OBJS += $(_PLATFORM_FILES)
# Core Config
EXTRA_CFLAGS += -DCONFIG_RXBUF_NUM_1024
EXTRA_CFLAGS += -DCONFIG_TX_SKB_ORPHAN
EXTRA_CFLAGS += -DCONFIG_SWCAP_SYNC_WIN
# PHL Config
#EXTRA_CFLAGS += -DPHL_RX_BATCH_IND
EXTRA_CFLAGS += -DRTW_WKARD_98D_RXTAG
endif

endif
