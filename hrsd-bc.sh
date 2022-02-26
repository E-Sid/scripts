#/!/bin/bash

echo "Hamilton Depression Rating Scale (HRSD)"
echo "======================================="
echo "Depressed mood [0-4]"
while :; do
    read D
    if [[ $D -ge 0 && $D -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Feelings of Guilt [0-4]"
while :; do
    read G
    if [[ $G -ge 0 && $G -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Suicide [0-4]"
while :; do
    read S
    if [[ $S -ge 0 && $S -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Insomnia: Early in the night [0-2]"
while :; do
    read I1
    if [[ $I1 -ge 0 && $I1 -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Insomnia: Middle of the night [0-2]"
while :; do
    read I2
    if [[ $I2 -ge 0 && $I2 -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Insomnia: Early hours in the morning [0-2]"
while :; do
    read I3
    if [[ $I3 -ge 0 && $I3 -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Work and activities [0-4]"
while :; do
    read W
    if [[ $W -ge 0 && $W -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Retardation [0-4]"
while :; do
    read R
    if [[ $R -ge 0 && $R -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Agitation [0-4]"
while :; do
    read A
    if [[ $A -ge 0 && $A -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Anxiety Psychic [0-4]"
while :; do
    read AP
    if [[ $AP -ge 0 && $AP -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Anxiety Somatic [0-4]"
while :; do
    read AS
    if [[ $AS -ge 0 && $AS -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Somatic Symptoms: Gastrointestinal [0-2]"
while :; do
    read GIT
    if [[ $GIT -ge 0 && $GIT -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "General Somatic Symptoms [0-2]"
while :; do
    read SSX
    if [[ $SSX -ge 0 && $SSX -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Genital Symptoms [0-2]"
while :; do
    read GSX
    if [[ $GSX -ge 0 && $GSX -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Hypochondriasis [0-4]"
while :; do
    read HC
    if [[ $HC -ge 0 && $HC -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Loss of weight, either according to the patient or according to weekly measurements [0-3]"
while :; do
    read WT
    if [[ $WT -ge 0 && $WT -le 3 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Insight [0-2]"
while :; do
    read IS
    if [[ $IS -ge 0 && $IS -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
HRSD=$(echo $D + $G + $S + $I1 + $I2 + $I3 + $W + $R + $A + $AP + $AS + $GIT + $SSX + $GSX + $HC + $WT + $IS | bc)
echo "The total HRSD score is" $HRSD "/53"
