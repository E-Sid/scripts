@echo off

set /p V=Enter the voltage (V):
set /p I=Enter the current (I):
set /p R=Enter the resistance (R):

set result=%V% * %I% / %R%

echo The result is: %result% volts

pause
