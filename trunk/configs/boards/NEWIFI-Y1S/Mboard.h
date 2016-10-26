/* ASUS RT-AC1200HP */

#define BOARD_PID		"RT-AC1200HP"
#define BOARD_NAME		"RT-AC1200HP"
#define BOARD_DESC		"ASUS RT-AC1200HP Wireless Router"
#define BOARD_VENDOR_NAME	"ASUSTek Computer Inc."
#define BOARD_VENDOR_URL	"http://www.asus.com/"
#define BOARD_MODEL_URL		"http://www.asus.com/Networking/RTAC1200HP/"
#define BOARD_BOOT_TIME		25
#define BOARD_FLASH_TIME	120
#undef  BOARD_GPIO_BTN_RESET
#define BOARD_GPIO_BTN_WPS	11
#undef  BOARD_GPIO_BTN_WLTOG
#undef  BOARD_GPIO_LED_ALL
#define BOARD_GPIO_LED_WIFI	72
#define BOARD_GPIO_LED_SW5G	50	/* soft led */
#define BOARD_GPIO_LED_POWER	9
#undef  BOARD_GPIO_LED_LAN	55
#define BOARD_GPIO_LED_WAN	51
#define BOARD_GPIO_LED_USB	52
#undef  BOARD_GPIO_LED_ROUTER
#undef BOARD_GPIO_PWR_USB
/*#define BOARD_GPIO_PWR_USB	54
#define BOARD_GPIO_PWR_USB2	55
#define BOARD_GPIO_PWR_USB3	56*/
#define BOARD_HAS_5G_11AC	1
#define BOARD_NUM_ANT_5G_TX	2
#define BOARD_NUM_ANT_5G_RX	2
#define BOARD_NUM_ANT_2G_TX	2
#define BOARD_NUM_ANT_2G_RX	2
#define BOARD_NUM_ETH_LEDS	1
#define BOARD_HAS_EPHY_L1000	1
#define BOARD_HAS_EPHY_W1000	0