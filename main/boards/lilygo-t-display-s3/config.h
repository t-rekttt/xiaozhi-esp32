#ifndef _BOARD_CONFIG_H_
#define _BOARD_CONFIG_H_

#include <driver/gpio.h>

// Audio: External I2S modules required (e.g., INMP441 mic + MAX98357A amp)
// Default pins - user should adjust to match their wiring
#define AUDIO_INPUT_SAMPLE_RATE  16000
#define AUDIO_OUTPUT_SAMPLE_RATE 24000

#define AUDIO_I2S_MIC_GPIO_WS   GPIO_NUM_43
#define AUDIO_I2S_MIC_GPIO_SCK  GPIO_NUM_44
#define AUDIO_I2S_MIC_GPIO_DIN  GPIO_NUM_18

#define AUDIO_I2S_SPK_GPIO_BCLK GPIO_NUM_15
#define AUDIO_I2S_SPK_GPIO_LRCK GPIO_NUM_16
#define AUDIO_I2S_SPK_GPIO_DOUT GPIO_NUM_17

// Button
#define BOOT_BUTTON_GPIO        GPIO_NUM_0

// Display: ST7789V 170x320 SPI
#define DISPLAY_SPI_MOSI_PIN    GPIO_NUM_7
#define DISPLAY_SPI_SCLK_PIN    GPIO_NUM_8
#define DISPLAY_SPI_CS_PIN      GPIO_NUM_5
#define DISPLAY_DC_PIN          GPIO_NUM_6
#define DISPLAY_RST_PIN         GPIO_NUM_9
#define DISPLAY_BACKLIGHT_PIN   GPIO_NUM_38

#define DISPLAY_WIDTH   170
#define DISPLAY_HEIGHT  320
#define DISPLAY_OFFSET_X 35
#define DISPLAY_OFFSET_Y 0
#define DISPLAY_MIRROR_X true
#define DISPLAY_MIRROR_Y true
#define DISPLAY_SWAP_XY  false

#define DISPLAY_BACKLIGHT_OUTPUT_INVERT false

#endif // _BOARD_CONFIG_H_
