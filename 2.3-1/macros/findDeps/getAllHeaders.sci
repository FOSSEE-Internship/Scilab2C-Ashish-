//
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009-2009 - DIGITEO - Bruno JOFRET
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//
//

function allHeaders = getAllHeaders(Target)

  //Header files common to all types of output format.
  Standalone_headers = [
      "includes/blas.h"
      "includes/lapack.h"
      "includes/constant.h"
      "includes/f2c.h"
      "includes/notFound.h"
      "includes/sci2clib.h"
      "src/c/auxiliaryFunctions/includes/abs.h"
      "src/c/auxiliaryFunctions/includes/max.h"
      "src/c/auxiliaryFunctions/includes/min.h"
      "src/c/auxiliaryFunctions/includes/dynlib_auxiliaryfunctions.h"
      "src/c/auxiliaryFunctions/includes/find2d.h"
      "src/c/auxiliaryFunctions/includes/length.h"
      "src/c/auxiliaryFunctions/includes/conj.h"
      "src/c/auxiliaryFunctions/includes/find.h"
      "src/c/auxiliaryFunctions/includes/frexp.h"
      "src/c/auxiliaryFunctions/includes/rand.h"
      "src/c/auxiliaryFunctions/includes/sign.h"
      "src/c/auxiliaryFunctions/includes/size.h"
      "src/c/auxiliaryFunctions/includes/type.h"
      "src/c/auxiliaryFunctions/includes/pythag.h"
      "src/c/auxiliaryFunctions/includes/isempty.h"
      "src/c/auxiliaryFunctions/includes/isnan.h"
      "src/c/type/doubleComplex.h"
      "src/c/type/dynlib_type.h"
      "src/c/type/floatComplex.h"
      "src/c/type/types.h"
      "src/c/matrixOperations/includes/cat.h"
      "src/c/matrixOperations/includes/hilb.h"
      "src/c/matrixOperations/includes/eye.h"
      "src/c/matrixOperations/includes/matrixTrace.h"
      "src/c/matrixOperations/includes/matrixExponential.h"
      "src/c/matrixOperations/includes/matrixInversion.h"
      "src/c/matrixOperations/includes/infiniteNorm.h"
      "src/c/matrixOperations/includes/zeros.h"
      "src/c/matrixOperations/includes/matrixMagnitude.h"
      "src/c/matrixOperations/includes/chol.h"
      "src/c/matrixOperations/includes/dist.h"
      "src/c/matrixOperations/includes/fill.h"
      "src/c/matrixOperations/includes/dynlib_matrixoperations.h"
      "src/c/matrixOperations/includes/matrixPow.h"
      "src/c/matrixOperations/includes/matrixDivision.h"
      "src/c/matrixOperations/includes/jmat.h"
      "src/c/matrixOperations/includes/logm.h"
      "src/c/matrixOperations/includes/ones.h"
      "src/c/matrixOperations/includes/matrixSquaredMagnitude.h"
      "src/c/matrixOperations/includes/spec.h"
      "src/c/matrixOperations/includes/matrixTranspose.h"
      "src/c/matrixOperations/includes/determ.h"
      "src/c/matrixOperations/includes/matrixMultiplication.h"
      "src/c/matrixOperations/includes/diag.h"
      "src/c/matrixOperations/includes/cumsum.h"
      "src/c/matrixOperations/includes/cumprod.h"
      "src/c/matrixOperations/includes/triu.h"
      "src/c/matrixOperations/includes/tril.h"
      "src/c/matrixOperations/includes/kron.h"
      "src/c/matrixOperations/includes/flipdim.h"
      "src/c/elementaryFunctions/includes/cos.h"
      "src/c/elementaryFunctions/includes/fix.h"
      "src/c/elementaryFunctions/includes/exp.h"
      "src/c/elementaryFunctions/includes/int.h"
      "src/c/elementaryFunctions/includes/log.h"
      "src/c/elementaryFunctions/includes/pow.h"
      "src/c/elementaryFunctions/includes/sin.h"
      "src/c/elementaryFunctions/includes/tan.h"
      "src/c/elementaryFunctions/includes/round.h"
      "src/c/elementaryFunctions/includes/log10.h"
      "src/c/elementaryFunctions/includes/log1p.h"
      "src/c/elementaryFunctions/includes/acos.h"
      "src/c/elementaryFunctions/includes/asin.h"
      "src/c/elementaryFunctions/includes/atan.h"
      "src/c/elementaryFunctions/includes/floor.h"
      "src/c/elementaryFunctions/includes/ceil.h"
      "src/c/elementaryFunctions/includes/exp10.h"
      "src/c/elementaryFunctions/includes/cosh.h"
      "src/c/elementaryFunctions/includes/dynlib_elementaryfunctions.h"
      "src/c/elementaryFunctions/includes/acosh.h"
      "src/c/elementaryFunctions/includes/sinh.h"
      "src/c/elementaryFunctions/includes/lnp1m1.h"
      "src/c/elementaryFunctions/includes/tanh.h"
      "src/c/elementaryFunctions/includes/sqrt.h"
      "src/c/elementaryFunctions/includes/bitand.h"
      "src/c/elementaryFunctions/includes/bitor.h"
      "src/c/elementaryFunctions/includes/bitxor.h"
      "src/c/elementaryFunctions/includes/bitcmp.h"
      "src/c/elementaryFunctions/includes/bitset.h"
      "src/c/elementaryFunctions/includes/bitget.h"
      "src/c/elementaryFunctions/includes/linspace.h"
      "src/c/elementaryFunctions/includes/logspace.h"
      "src/c/elementaryFunctions/includes/asinh.h"
      "src/c/elementaryFunctions/includes/atan2.h"
      "src/c/elementaryFunctions/includes/atanh.h"
      "src/c/elementaryFunctions/includes/uint8.h"
      "src/c/elementaryFunctions/includes/int8.h"
      "src/c/elementaryFunctions/includes/uint16.h"
      "src/c/elementaryFunctions/includes/int16.h"
      "src/c/elementaryFunctions/includes/acosd.h"
      "src/c/elementaryFunctions/includes/acot.h"
      "src/c/elementaryFunctions/includes/acotd.h"
      "src/c/elementaryFunctions/includes/acoth.h"
      "src/c/elementaryFunctions/includes/acsc.h"
      "src/c/elementaryFunctions/includes/acscd.h"
      "src/c/elementaryFunctions/includes/acsch.h"
      "src/c/elementaryFunctions/includes/asec.h"
      "src/c/elementaryFunctions/includes/asecd.h"
      "src/c/elementaryFunctions/includes/asech.h"
      "src/c/elementaryFunctions/includes/asind.h"
      "src/c/elementaryFunctions/includes/atand.h"
      "src/c/statisticsFunctions/includes/variance.h"
      "src/c/statisticsFunctions/includes/sum.h"
      "src/c/statisticsFunctions/includes/mean.h"
      "src/c/statisticsFunctions/includes/meanf.h"
      "src/c/statisticsFunctions/includes/stdevf.h"
      "src/c/statisticsFunctions/includes/prod.h"
      "src/c/statisticsFunctions/includes/dynlib_statisticsfunctions.h"
      "src/c/statisticsFunctions/includes/statMax.h"
      "src/c/statisticsFunctions/includes/statMin.h"
      "src/c/operations/includes/subtraction.h"
      "src/c/operations/includes/addition.h"
      "src/c/operations/includes/dynlib_operations.h"
      "src/c/operations/includes/division.h"
      "src/c/operations/includes/multiplication.h"
      "src/c/string/includes/dynlib_string.h"
      "src/c/string/includes/disp.h"
      "src/c/string/includes/str.h"
      "src/c/signalProcessing/fft/fft_internal.h"
      "src/c/signalProcessing/ifft/ifft_internal.h"
      "src/c/signalProcessing/levin/levinUtils.h"
      "src/c/signalProcessing/includes/hilbert.h"
      "src/c/signalProcessing/includes/fft.h"
      "src/c/signalProcessing/includes/lev.h"
      "src/c/signalProcessing/includes/levin.h"
      "src/c/signalProcessing/includes/conv.h"
      "src/c/signalProcessing/includes/conv2d.h"
      "src/c/signalProcessing/includes/ifft.h"
      "src/c/signalProcessing/includes/fftshift.h"
      "src/c/signalProcessing/includes/lpc2cep.h"
      "src/c/signalProcessing/includes/dynlib_signalprocessing.h"
      "src/c/signalProcessing/includes/crossCorr.h"
      "src/c/implicitList/dynlib_implicitlist.h"
      "src/c/implicitList/implicitList.h"
      "src/c/differential_calculus/includes/ode.h"
      "src/c/Files/includes/files.h"];

  //Header files required for "Arduino" output
  Arduino_headers = [
      "src/c/scilab-arduino/includes/cmd_digital_out.h"
      "src/c/scilab-arduino/includes/cmd_digital_in.h"
      "src/c/scilab-arduino/includes/cmd_analog_out.h"
      "src/c/scilab-arduino/includes/cmd_analog_in.h"
      "src/c/scilab-arduino/includes/cmd_dcmotor_setup.h"
      "src/c/scilab-arduino/includes/cmd_dcmotor_run.h"
      "src/c/scilab-arduino/includes/cmd_servo_attach.h"
      "src/c/scilab-arduino/includes/cmd_servo_detach.h"
      "src/c/scilab-arduino/includes/cmd_servo_move.h"
      "src/c/scilab-arduino/includes/sleep.h"];

  AVR_headers = [
      "src/c/hardware/avr/includes/AVRPeripheralGPIO.h"
      "src/c/hardware/avr/includes/AVRPeripheralADC.h"
      "src/c/hardware/avr/includes/AVRPeripheralPWM.h"
      "src/c/hardware/avr/includes/AVRUtil.h"
      "src/c/hardware/avr/includes/AVRPeripheralTimer.h"
      "src/c/hardware/avr/includes/AVRPeripheralUART.h"
	    ]; 

  RPi_headers = [
      "includes/bcm2835.h"
      "src/c/hardware/rasberrypi/includes/RPIPeripheralDigital.h"
      "src/c/hardware/rasberrypi/includes/RPIPeripheralUtil.h"
		];

  if Target == "StandAlone"
  allHeaders = Standalone_headers;
  elseif Target == "Arduino"
  allHeaders = cat(1,Standalone_headers, Arduino_headers);
  elseif Target == "AVR"
  allHeaders = cat(1,Standalone_headers, AVR_headers);
  elseif Target == "RPi"
  allHeaders = cat(1,Standalone_headers, RPi_headers);
  end

endfunction
