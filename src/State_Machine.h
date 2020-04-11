/*
 * State_Machine.c
 * @Description: This .h File Contains all the files required for State Machine Implementation
 *  Created on: Feb 13, 2020
 *      Author: Nitik gupta
 */
#ifndef SRC_STATE_MACHINE_H_
#define SRC_STATE_MACHINE_H_

#include "I2C_Comm.h"
#include "em_i2c.h"
#include "I2C_Comm_Interrupt.h"
//#include "geckoevents.h"
//#include "infrastructure.h"
#include "app/bluetooth/common/util/infrastructure.h"
#include "native_gecko.h"

#define SCHEDULER_SUPPORTS_DISPLAY_UPDATE_EVENT 1
typedef enum
{
	Start,
	READ,
	WRITE,
	SLEEPEM1,
	DISPLAY_Temp,
	Stop,
	Exit_machine
}Event_I2C;
extern uint16_t Transfer_Done;		//Flag for checking transfer done process
extern uint16_t tmp[2];
I2C_TransferReturn_TypeDef Return_State;
// @Name: State_Machine()
// @Brief: Implementing the state machine
void State_Machine();
// @Name: event_set_Next()
// @Brief: Sets the Next Event value
void event_set_Next(Event_I2C event);
// @Name: event_get_Next()
// @Brief: gets the Next Event value
Event_I2C event_get_Next();
// @Name: event_set_Previous()
// @Brief: Sets the Previous Event value
void event_set_Previous(Event_I2C event);
// @Name: event_get_Previous()
// @Brief: gets the Previous Event value
Event_I2C event_get_Previous();
//* @Name: Display_temp
//* @Brief: displaying the temperature
void Display_temp();
//* @Name: stop_state
//* @Brief: Stopping the State machine
void stop_state();
//* @Name: Read_Start
//* @Brief: Starting the read process
void Read_Start();
//* @Name: In_Progress
//* @Brief: The Sleep Function
void In_Progress();
//* @Name: Write_Start
//* @Brief: Starting the write process
void Write_Start();
//* @Name: start_state
//* @Brief: Starting the state machine
void start_state();
void ftoa(float n, char* res, int afterpoint);
int intToStr(int x, char str[], int d) ;
void reverse(char* str, int len);
#endif /* SRC_STATE_MACHINE_H_ */
