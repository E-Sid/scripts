DIM V as double
DIM I as double
DIM R as double

PRINT "Ohm's Law Calculator"
PRINT
PRINT "Enter V (Voltage) in Volts";
INPUT  V
PRINT "Enter I (Current) in Amps";
INPUT  I
PRINT "Enter R (Resistance) in Ohms"
INPUT R

IF V = 0 THEN V = I * R
IF I = 0 THEN I = V / R
IF R = 0 THEN R = V / I

PRINT
PRINT "Voltage (V): "; V; " Volts"
PRINT "Current (I): "; I; " Amps"
PRINT "Resistance (R): "; R; " Ohms"
