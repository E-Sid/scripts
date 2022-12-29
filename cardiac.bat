echo off
echo This is Cardiac Output Calculator
SET/P S="Please, enter the stroke volume to the nearest integer"
SET/P H="Please, enter the heart rate"
SET/A "C=%S%*%H%"
echo The Cardiac Output is %C% L/min
