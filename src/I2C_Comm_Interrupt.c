/*
 * I2C_Comm_Interrupt.c
 * @Description: This .c File contains all the functions required for I2C communication in interrupt mode
 *  Created on: Feb 13, 2020
 *      Author: Nitik gupta
 */

#include "I2C_Comm_Interrupt.h"
#include "Timer_Module.h"
#include "native_gecko.h"
I2CSPM_Init_TypeDef i2c_init_def1=
{
		I2C0,                       /* Use I2C instance 0 */                       \
		gpioPortC,                  /* SCL port */                                 \
		SCL_PIN,           			/* SCL pin */                                  \
		gpioPortC,                  /* SDA port */                                 \
		SDA_PIN,   				    /* SDA pin */                                  \
		PORT_SCL_LOCATION,             /* Location of SCL */                          \
		PORT_SDA_LOCATION,             /* Location of SDA */                          \
		0,                          /* Use currently configured reference clock */ \
	    I2C_FREQ_STANDARD_MAX,      /* Set to standard rate  */                    \
	    i2cClockHLRStandard,        /* Set to use 4:4 low/high duty cycle */       \
};
uint8_t t1[1] = {0xF3};

//Structure Values required for write Process
I2C_TransferSeq_TypeDef i2c_transfer_message_write =
{
	.addr=SI7021_CONFIG_I2C_BUS_ADDRESS<<1,
	.flags=I2C_FLAG_WRITE,
	.buf[0].data=t1,
	.buf[0].len=Single_Byte,
};

//Structure Values required for read Process
I2C_TransferSeq_TypeDef i2c_transfer_message_read =
{
	.addr=SI7021_CONFIG_I2C_BUS_ADDRESS<<1,
	.flags=I2C_FLAG_READ,
	.buf[0].data=tmp,
	.buf[0].len=Double_Byte,
};

I2C_TransferReturn_TypeDef return_state;
I2C_TransferReturn_TypeDef ret;
uint16_t tmp[2]={0};
uint16_t Transfer_Done=0;
uint8_t No_Hold_Cmd=0xF3;
CORE_irqState_t IRQ_State;
I2C_TransferReturn_TypeDef Return_State;
/*
 * @Name: i2c_initialize_interrupt()
 * @Brief: Initializing I2C according to the I2C Configuring
 * @Arguments: None
 * @returns: None
 */
void i2c_initialize_interrupt()
{
	I2CSPM_Init(&i2c_init_def1);
	SLEEP_SleepBlockBegin(sleepEM2);
}
/*
 * @Name: i2c_transfer_write_Interrupt()
 * @Brief: Writing to the registers from the I2C
 * @Arguments: The value to be given
 * @returns: None
 */
I2C_TransferReturn_TypeDef i2c_transfer_write_Interrupt(uint8_t* message)
{
	ret=I2C_TransferInit(I2C0, &i2c_transfer_message_write);
	return ret;
}
/*
 * @Name: i2c_transfer_read_Interrupt()
 * @Brief: Reading from the registers from the I2C
 * @Arguments: The buffer to be written to
 * @returns: None
 */
I2C_TransferReturn_TypeDef i2c_transfer_read_Interrupt()
{

	ret=I2C_TransferInit(I2C0, &i2c_transfer_message_read);
	return ret;
}
/*
 * @Name: i2c_get_temp()
 * @Brief: Getting temperature from I2C
 * @Arguments: None
 * @returns: Temperature Array
 */
uint16_t* i2c_get_temp()
{
	return tmp;
}
/*
 * @Name: i2c_temp_measure_Interrupt()
 * @Brief: Simple Function to implement interrupt based i2c without state machine
 * @Arguments: None
 * @returns: Temperature
 */
float i2c_temp_measure_Interrupt()
{
		uint8_t tmp[2]={0};
		uint16_t temp;
		uint8_t t1[1];
		float temperature;
		NVIC_EnableIRQ(I2C0_IRQn);
		t1[0]=SI7021_Read_Temperature_Mode;
		i2c_initialize_interrupt();
		Wait_milli(80);
		i2c_transfer_write_Interrupt(t1);
		Wait_milli(10);
		i2c_transfer_read_Interrupt(tmp);
		temp=(tmp[0]<<8)+tmp[1];			// there are 2 buffers for Higher and Lower byte.
		temperature=convert_to_celcius(temp);
		SLEEP_SleepBlockEnd(sleepEM2);
		return temperature;
}
/*
 * @Name: I2C0_IRQHandler()
 * @Brief: IRQ Handler for I2C
 * @Arguments: None
 * @returns: None
 */
void I2C0_IRQHandler(void)
{		IRQ_State=CORE_EnterCritical();
		Return_State=I2C_Transfer(I2C0);
		if(Return_State!=i2cTransferInProgress)
		{
			Transfer_Done=1;
			gecko_external_signal(gecko_evt_system_awake_id);
		}
		logFlush();
		CORE_ExitCritical(IRQ_State);
}
