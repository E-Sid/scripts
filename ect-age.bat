echo off
echo This is ECT Age-based charge calculator
SET/P A="Please, enter the age of the patient in years"
SET /A "D=%A%*5
echo According to age-based dosing the estimated dose is %D% mC
