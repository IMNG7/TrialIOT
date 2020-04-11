/*
 * @File Name:Timer_Module.c
 *	@Brief: All the functions involving initalization of timer, oscillator, etc.
 *  Created on: Jan 30, 2020
 *      Author: Nitik gupta
 */
#include "Timer_Module.h"
#include "stdint.h"
#include "State_Machine.h"
#include "app.h"
CMU_Osc_TypeDef Oscillator_Type;
uint32_t Divisor;
uint32_t counts=0;
extern uint8_t flag;

// Structure for the initialization of the Letimer
LETIMER_Init_TypeDef LETIMER_Init_Struct=
{
  .enable = false,         /**< Start counting when initialization completes. */
  .debugRun = false,       /**< Counter shall keep running during debug halt. */
  .comp0Top=false,       /**< Load COMP0 register into CNT when counter underflows. */
  .bufTop=false,         /**< Load COMP1 into COMP0 when REP0 reaches 0. */
  .out0Pol=0,        /**< Idle value for output 0. */
  .out1Pol=0,        /**< Idle value for output 1. */
  .ufoa0=letimerUFOANone,          /**< Underflow output 0 action. */
  .ufoa1=letimerUFOANone,          /**< Underflow output 1 action. */
  .repMode=letimerRepeatFree,        /**< Repeat mode. */
  //.topValue=(pow(2,16)-1)       /**< Top value. Counter wraps when top value matches counter value is reached. */
};
/*
 * @Name: Oscillator_init
 * @Brief: Initializing the Oscillator according the energy mode
 * @Arguments: Energy mode Required
 * @returns: None
 */
void Oscillator_Init(SLEEP_EnergyMode_t Energy_Mode)
{
	if(Energy_Mode==sleepEM1 || Energy_Mode==sleepEM2 || Energy_Mode==sleepEM0)	//
	{
		Oscillator_Type=cmuOsc_LFXO;
	}
	else if(Energy_Mode==sleepEM3 )
	{
		Oscillator_Type=cmuOsc_ULFRCO;
	}
	CMU_OscillatorEnable(Oscillator_Type,true,true);
	CMU_ClockSelectSet(cmuClock_LFA,Oscillator_Type);
	CMU_ClockEnable(cmuClock_LFA,true);
	CMU_ClockEnable(cmuClock_LETIMER0,true);
}
/*
 * @Name: Letimer_init
 * @Brief: Initializing the Letimer
 * @Arguments: None
 * @returns: None
 */
void Letimer_init()
{	uint32_t time1;
	Divisor=Get_Divisor();
	CMU_ClockDivSet(cmuClock_LETIMER0,Divisor);
	LETIMER_Init(LETIMER0,&LETIMER_Init_Struct);
	time1=Time_To_Count(Time_Period);
	time1=Max_Count-time1;
	LETIMER_CompareSet(LETIMER0,0,time1);
}
/*
 * @Name: Sleep_init
 * @Brief: Initializing the Sleep mode according the energy mode
 * @Arguments: Energy mode Required
 * @returns: None
 */
void Sleep_Init(SLEEP_EnergyMode_t Energy_Mode)
{
	if(Energy_Mode==sleepEM1)
	{
		SLEEP_SleepBlockBegin(sleepEM2);
	}
	else if(Energy_Mode==sleepEM2)
	{
		SLEEP_SleepBlockBegin(sleepEM3);
	}
	else
	{
		//Nothing Here
	}
}
/*
 * @Name: Time_To_Count
 * @Brief: Convert the time to the count value for the timer according to the frequency and divider
 * @Arguments: time in ms
 * @returns: the count value
 */
uint32_t Time_To_Count(uint16_t time)
{	uint32_t count;
	uint16_t freq;
	if(Oscillator_Type==cmuOsc_LFXO)
	{
		freq=LFreq;
	}
	else if(Oscillator_Type==cmuOsc_ULFRCO)
	{
		freq=LFreq;
	}
	count=(time*freq)/Divisor;
	return count/1000;	// Divide by 1000 to because time passed in ms
}
/*
 * @Name: Get_Divisor
 * @Brief: Receives the divider for the frequency required
 * @Arguments: None
 * @returns: Divider Value
 */
uint16_t Get_Divisor()
{	uint8_t i=1;
	uint32_t count;
	uint16_t freq;
	if(Oscillator_Type==cmuOsc_LFXO)
	{
		freq=LFreq;
	}
	else if(Oscillator_Type==cmuOsc_ULFRCO)
	{
		freq=LFreq;
	}
	count=(Time_Period)*freq/i;
	while(count/1000>Max_Count) // Divide by 1000 to because time passed in ms
	{
		i*=2;
		count=((Time_Period)*freq/i);
	}
	return i;
}
/*
 * @Name: Wait_milli
 * @Brief: Blocks the timer for time given
 * @Arguments: time_milli
 * @returns: None
 */
void Wait_milli(uint16_t time_milli)
{
	uint32_t cur_cnt = LETIMER_CounterGet(LETIMER0);
	while(LETIMER_CounterGet(LETIMER0) >= (cur_cnt - Time_To_Count(time_milli)));
}
/*
 * @Name: Timer_Wait_Milli
 * @Brief: Blocks the timer for time given
 * @Arguments: time_milli
 * @returns: None
 */
void Timer_Wait_Milli(uint16_t time_milli)
{	struct gecko_cmd_packet* evnt;
	uint32_t cur_cnt = LETIMER_CounterGet(LETIMER0);
	LETIMER_CompareSet(LETIMER0,1,cur_cnt-Time_To_Count(time_milli));
	evnt=gecko_wait_event();
	handle_ecen5823_gecko_event(BGLIB_MSG_ID(evnt->header), evnt);
}
/*
 * @Name: Wait_micro
 * @Brief: Blocks the timer for time given
 * @Arguments: time_micro
 * @returns: None
 */
void us_wait(uint32_t time_micro)
{
	uint32_t cur_cnt = LETIMER_CounterGet(LETIMER0);
	time_micro=time_micro/1000;
	while(LETIMER_CounterGet(LETIMER0) >= (cur_cnt - Time_To_Count(time_micro)));
}
/*
 * @Name: LETIMER0_IRQHandler
 * @Brief: IRQ handler for the letimer0
 * @Arguments: None
 * @returns: None
 */
void LETIMER0_IRQHandler(void)
{
	if(LETIMER0->IF & LETIMER_IFC_COMP0)
	{
		flag=1;
		gecko_external_signal(gecko_evt_system_external_signal_id);
		counts+=LETIMER_CounterGet(LETIMER0)*(Time_Period/1000);
		LETIMER_CounterSet(LETIMER0,65535);
	}
	else if(LETIMER0->IF & LETIMER_IFC_COMP1)
	{
			//flag=1;
			gecko_external_signal(gecko_evt_system_awake_id);
	}
	LETIMER_IntClear(LETIMER0,LETIMER_IFC_COMP0 | LETIMER_IFC_COMP1 | LETIMER_IFC_UF);

}
/*
 * @Name: timerGetRunTimeMilliseconds
 * @Brief: Gives the run time in milliseconds
 * @Arguments: None
 * @returns: Time in milliseconds
 */
uint32_t timerGetRunTimeMilliseconds()
{	float time_cnt;
	uint32_t time;
	uint32_t cur_cnt = 65535-LETIMER_CounterGet(LETIMER0);
	cur_cnt+=counts;
	time_cnt=(float)(cur_cnt*Divisor)/(float)LFreq;
	time=time_cnt*1000;
	return time;
}
