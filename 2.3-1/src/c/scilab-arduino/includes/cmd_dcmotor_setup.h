/*
 *  Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
 *  Copyright (C) 2008 - INRIA - Arnaud TORSET
 *
 *  This file must be used under the terms of the CeCILL.
 *  This source file is licensed as described in the file COPYING, which
 *  you should have received as part of this distribution.  The terms
 *  are also available at
 *  http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
 *
 */
 
 
#ifndef __CMD_DCMOTOR_SETUP_H__
#define __CMD_DCMOTOR_SETUP_H__
 
#include "types.h"

#ifdef  __cplusplus
extern "C" {
#endif

extern uint8 dcm_pin_1[4], dcm_pin_2[4], dcm_mode[4];
	
uint8 u8cmd_dc_motor_setups(uint8 board_no, uint8 driver_type, uint8 motor_no,\
							uint8 pin_1, uint8 pin_2);

#ifdef  __cplusplus
} /* extern "C" */
#endif

#endif /* __CMD_DCMOTOR_SETUP_H__ */
