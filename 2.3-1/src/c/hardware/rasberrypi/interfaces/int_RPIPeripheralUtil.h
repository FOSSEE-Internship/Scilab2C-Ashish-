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


#ifndef __INT_RPIPERIPHERALUTIL_H__
#define __INT_RPIPERIPHERALUTIL_H__

#include "types.h"
#include "RPIPeripheralUtil.h"

#ifdef  __cplusplus
extern "C" {
#endif

#define RPI_DelayMicro(in1) u16RPIDelayMicros((uint16) in1);
#define RPI_DelayMilli(in1) u16RPIDelayMillis((uint16) in1);

#ifdef  __cplusplus
} /* extern "C" */
#endif

#endif /* !__RPIPERIPHERALUTIL_H__ */
