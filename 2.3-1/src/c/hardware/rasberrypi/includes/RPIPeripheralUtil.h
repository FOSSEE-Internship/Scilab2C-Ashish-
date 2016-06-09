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

/* This file declares functions and constants related to rasberrypi*/

#ifndef __RPIPERIPHERALUTIL_H__
#define __RPIPERIPHERALUTIL_H__

#ifdef  __cplusplus
extern "C" {
#endif

#include "types.h"
#include "bcm2835.h"

uint8 u16RPIDelayMillis(uint16 time);
uint8 u16RPIDelayMicros(uint16 time);

#ifdef  __cplusplus
} /* extern "C" */
#endif

#endif  /*__RPIPERIPHERALUTIL_H__*/
