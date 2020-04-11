/*
 * State_Machine.c
 * @Description: This .c File Contains all the files required for State Machine Implementation
 *  Created on: Feb 13, 2020
 *      Author: Nitik gupta
 */
#include "State_Machine.h"
#include "stdio.h"
#include "stdlib.h"
#include "app.h"
Event_I2C Next_Event,Previous_Event;
I2C_TransferSeq_TypeDef i2c_transfer_message;
uint8_t htmTempBuffer[5]; /* Stores the temperature data in the Health Thermometer (HTM) format. */
char buff[8];
//uint8_t *q = htmTempBuffer; /* Pointer to HTM temperature buffer needed for converting values to bitstream. */

float temperature=0;
/*
 * @Name: start_state
 * @Brief: Starting the state machine
 * @Arguments: None
 * @returns: None
 */
void start_state()
{
	Previous_Event=Next_Event;
	Next_Event=WRITE;
	Enable_Device();
	i2c_initialize_interrupt();
	Timer_Wait_Milli(80);
}
/*
 * @Name: Write_Start
 * @Brief: Starting the write process
 * @Arguments: None
 * @returns: None
 */
void Write_Start()
{
	uint8_t t1[1];
	t1[0]=SI7021_Read_Temperature_Mode;
	Previous_Event=Next_Event;
	Next_Event=SLEEPEM1;
	I2C_Enable(I2C0,true);
	Return_State=i2c_transfer_write_Interrupt(t1);
	NVIC_EnableIRQ(I2C0_IRQn);
}
/*
 * @Name: In_Progress
 * @Brief: The Sleep Function
 * @Arguments: None
 * @returns: None
 */
void In_Progress()
{	struct gecko_cmd_packet* evnt;
	evnt=gecko_wait_event();
	handle_ecen5823_gecko_event(BGLIB_MSG_ID(evnt->header), evnt);
	if(Transfer_Done==1)
	{
		Transfer_Done=0;
		if(Previous_Event==WRITE)
		{
				Previous_Event=Next_Event;
				Next_Event=READ;
		}
		else if(Previous_Event==READ)
		{
				Previous_Event=Next_Event;
				Next_Event=DISPLAY_Temp;
		}
	}
	Timer_Wait_Milli(10);
}
/*
 * @Name: Read_Start
 * @Brief: Starting the read process
 * @Arguments: None
 * @returns: None
 */
void Read_Start()
{
	NVIC_DisableIRQ(I2C0_IRQn);
	Previous_Event=Next_Event;
	Next_Event=SLEEPEM1;
	Return_State=i2c_transfer_read_Interrupt();
	NVIC_EnableIRQ(I2C0_IRQn);
	//Wait_milli(10);
}
/*
 * @Name: stop_state
 * @Brief: Stopping the State machine
 * @Arguments: None
 * @returns: None
 */
void stop_state()
{
	SLEEP_SleepBlockEnd(sleepEM2);
	//Disable_Device();
	Previous_Event=Next_Event;
	Next_Event=Exit_machine;
}
/*
 * @Name: Display_temp
 * @Brief: displaying the temperature
 * @Arguments: None
 * @returns: None
 */
void Display_temp()
{	Previous_Event=Next_Event;
	uint32_t tempdata;
	uint16_t temp;
	uint8_t *q = htmTempBuffer; /* Pointer to HTM temperature buffer needed for converting values to bitstream. */
	temp= (tmp[0]<<8) + tmp[1];			// there are 2 buffers for Higher and Lower byte.
	temperature=convert_to_celcius(temp);
	LOG_INFO("\n\rTemperature:%f C\n\r",temperature);
	UINT8_TO_BITSTREAM(q, 0x00);
	tempdata = FLT_TO_UINT32(temperature*1000, -3);
    /* Convert temperature to bitstream and place it in the HTM temperature data buffer (htmTempBuffer) */
	UINT32_TO_BITSTREAM(q, tempdata);
	ftoa(temperature,buff,2);
	Next_Event=Stop;
}
/*
 * @Name: event_set_Next
 * @Brief: Sets the Next Event value
 * @Arguments: the event ot be set
 *
 * @returns: None
 */
void event_set_Next(Event_I2C event)
{
	Next_Event=event;
}
/*
 * @Name: event_get_Next
 * @Brief: Returns from the registers from the I2C
 * @Arguments: None
 * @returns: Previous event
 */
Event_I2C event_get_Next()
{
	return Next_Event;
}
/*
 * @Name: event_set_Previous
 * @Brief: Sets the Previous Event value
 * @Arguments: The event to be written to
 * @returns: None
 */
void event_set_Previous(Event_I2C event)
{
	Previous_Event=event;
}
/*
 * @Name: event_get_Previous
 * @Brief: Returns from the registers from the I2C
 * @Arguments: None
 * @returns: Previos event value
 */
Event_I2C event_get_Previous()
{
	return Previous_Event;
}
/*
 * @Name: State_Machine()
 * @Brief: Implementing the state machine
 * @Arguments: None
 * @returns: None
 */
void State_Machine()
{
	while(Next_Event!=Exit_machine){
	switch(Next_Event)
	{
	case Start:	start_state();
					break;
	case WRITE:	Write_Start();
					break;
	case SLEEPEM1:In_Progress();
					break;
	case READ:	Read_Start();
					break;
	case DISPLAY_Temp:Display_temp();
					break;
	case Stop:	stop_state();
					break;
	default:	LOG_INFO("\n\r Wrong State");
					break;
	}
	}
}
/*
 * Refered From:https://www.geeksforgeeks.org/convert-floating-point-number-string/
 * @name:reverse
 * @Brief:reverse the order of digit
 * @Arguments: String, length
 * @return:void
 */
void reverse(char* str, int len)
{
    int i = 0, j = len - 1, temp;
    while (i < j) {
        temp = str[i];
        str[i] = str[j];
        str[j] = temp;
        i++;
        j--;
    }
}
/*
 * Refered From:https://www.geeksforgeeks.org/convert-floating-point-number-string/
 * @name:intToStr
 * @Brief:int to string
 * @Arguments: interger to be converted, string and decimal points after number
 * @return:value
 */
int intToStr(int x, char str[], int d)
{
    int i = 0;
    while (x) {
        str[i++] = (x % 10) + '0';
        x = x / 10;
    }

    // If number of digits required is more, then
    // add 0s at the beginning
    while (i < d)
        str[i++] = '0';

    reverse(str, i);
    str[i] = '\0';
    return i;
}
/*
 * Refered From:https://www.geeksforgeeks.org/convert-floating-point-number-string/
 * @name:ftoa
 * @Brief:convert float to alphanumeric
 * @Arguments: float and afterpoint
 * @return:void
 */
void ftoa(float n, char* res, int afterpoint)
{
    // Extract integer part
    int ipart = (int)n;

    // Extract floating part
    float fpart = n - (float)ipart;

    // convert integer part to string
    int i = intToStr(ipart, res, 0);

    // check for display option after point
    if (afterpoint != 0) {
        res[i] = '.'; // add dot

        // Get the value of fraction part upto given no.
        // of points after dot. The third parameter
        // is needed to handle cases like 233.007
        fpart = fpart * pow(10, afterpoint);

        intToStr((int)fpart, res + i + 1, afterpoint);
    }
}
