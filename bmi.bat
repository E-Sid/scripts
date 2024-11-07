echo off
echo This is BMI Calculator
SET/P S="Please, enter the weight to the nearest kilogram"
SET/P H="Please, enter the height in centimetres"
SET/A "C=%S%/(%H%*%H%)/100)"
echo The BMI is %C%
