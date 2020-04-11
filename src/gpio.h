/*
 * gpio.h
 *
 *  Created on: Dec 12, 2018
 *      Author: Dan Walkes
 */

#ifndef SRC_GPIO_H_
#define SRC_GPIO_H_
#include <stdbool.h>

#define GPIO_SET_DISPLAY_EXT_COMIN_IMPLEMENTED 	1
#define GPIO_DISPLAY_SUPPORT_IMPLEMENTED		1
#define Push_Button_Port 5
#define Push_Button_Pin 6
void gpioInit();
void gpioLed0SetOn();
void gpioLed0SetOff();
void gpioLed1SetOn();
void gpioLed1SetOff();
void Button_Handler();
//@name:gpioEnableDisplay
//@brief:Enables the EXTCOMIN pin
void gpioEnableDisplay();
//@name:gpioSetDisplayExtcomin
//@brief:Enables the EXTCOMIN pin
void gpioSetDisplayExtcomin(bool high);
#endif /* SRC_GPIO_H_ */
