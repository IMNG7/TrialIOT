/*
 * I2C_Comm_Interrupt.c
 * @Description: This .h File contains all the functiond definitions and #defines required for I2C communication in interrupt mode
 *  Created on: Feb 13, 2020
 *      Author: Nitik gupta
 */

#ifndef SRC_I2C_COMM_INTERRUPT_H_
#define SRC_I2C_COMM_INTERRUPT_H_
#include "I2C_Comm.h"
#include "em_i2c.h"
#include "em_core.h"
#include "State_Machine.h"

#define SDA_PIN 11
#define SCL_PIN 10

extern I2C_TransferSeq_TypeDef i2c_transfer_message_write,i2c_transfer_message_read;
extern uint8_t t1[1];
// * @Name: i2c_initialize_interrupt()
// * @Brief: Initializing I2C according to the I2C Configuring
void i2c_initialize_interrupt();
//* @Name: i2c_transfer_write_Interrupt()
//* @Brief: Writing to the registers from the I2C
I2C_TransferReturn_TypeDef i2c_transfer_write_Interrupt(uint8_t* message);
//* @Name: i2c_transfer_read_Interrupt()
//* @Brief: Reading from the registers from the I2C
I2C_TransferReturn_TypeDef i2c_transfer_read_Interrupt();
//* @Name: i2c_get_temp()
//* @Brief: Getting temperature from I2C
uint16_t* i2c_get_temp();
//* @Name: i2c_temp_measure_Interrupt()
//* @Brief: Simple Function to implement interrupt based i2c without state machine
float i2c_temp_measure_Interrupt();
//* @Name: I2C0_IRQHandler()
//* @Brief: IRQ Handler for I2C
void I2C0_IRQHandler(void);
#endif /* SRC_I2C_COMM_INTERRUPT_H_ */
