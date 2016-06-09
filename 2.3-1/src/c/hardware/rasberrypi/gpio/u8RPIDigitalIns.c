/* Copyright (C) 2016 - IIT Bombay - FOSSEE

 This file must be used under the terms of the CeCILL.
 This source file is licensed as described in the file COPYING, which
 you should have received as part of this distribution.  The terms
 are also available at
 http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
 Author: Siddhesh Wani
 Organization: FOSSEE, IIT Bombay
 Email: toolbox@scilab.in
*/

/* Function to read the state of the gpio pin

 Calling Sequence
     u8RPI_DigitalIn(pin)

 Parameters
     pin : pin of RPi to be read
     
 Returns
	   state: Current state of the specified gpio pin

 Description
     There are few pins available on RPi as Gpio or digital i/o. These pins can be used as digital output or input. Using this function, current state (low/high) of any gpio pin can be read. 'pin' name must be provided from list provided. Please refer '' for complete list of pins. 'state' can be 0 or 1 depending upon state of the pin (Low/High). RPI_DigitalSetup with appropriate arguments must be called before using this function.
 Examples
     u8RPI_DigitalIn(RPI_GPIO_P1_03,1) //Returns the state of pin 3 of header P1
*/

#include "types.h"
#include "RPIPeripheralDigital.h"

uint8 u8RPIDigitalIns(uint8 pin)
{
	uint8 state = 0;
	state = bcm2835_gpio_lev(pin);
	return (state);
}
