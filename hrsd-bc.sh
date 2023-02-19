#/!/bin/bash

echo "Hamilton Depression Rating Scale (HRSD)"
echo "======================================="
echo "Depressed mood [0-4]"
while :; do
    read D
    if [[ -z $D ]]; then
	echo "Entry cannot be empty"
    elif [[ $D -ge 0 && $D -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Feelings of Guilt [0-4]"
while :; do
    read G
    if [[ -z $G ]]; then
	echo "Entry cannot be empty"
    elif [[ $G -ge 0 && $G -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Suicide [0-4]"
while :; do
    read S
    if [[ -z $S ]]; then
	echo "Entry cannot be empty"
    elif [[ $S -ge 0 && $S -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Insomnia: Early in the night [0-2]"
while :; do
    read I1
    if [[ -z $I1 ]]; then
	echo "Entry cannot be empty"
    elif [[ $I1 -ge 0 && $I1 -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Insomnia: Middle of the night [0-2]"
while :; do
    read I2
    if [[ -z $I2 ]]; then
	echo "Entry cannot be empty"
    elif [[ $I2 -ge 0 && $I2 -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Insomnia: Early hours in the morning [0-2]"
while :; do
    read I3
    if [[ -z $I3 ]]; then
	echo "Entry cannot be empty"
    elif [[ $I3 -ge 0 && $I3 -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Work and activities [0-4]"
while :; do
    read W
    if [[ -z $W ]]; then
	echo "Entry cannot be empty"
    elif [[ $W -ge 0 && $W -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Retardation [0-4]"
while :; do
    read R
    if [[ -z $R ]]; then
	echo "Entry cannot be empty"
    elif [[ $R -ge 0 && $R -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Agitation [0-4]"
while :; do
    read A
    if [[ -z $A ]]; then
	echo "Entry cannot be empty"
    elif [[ $A -ge 0 && $A -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Anxiety Psychic [0-4]"
while :; do
    read AP
    if [[ -z $AP ]]; then
	echo "Entry cannot be empty"
    elif [[ $AP -ge 0 && $AP -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Anxiety Somatic [0-4]"
while :; do
    read AS
    if [[ -z $AS ]]; then
	echo "Entry cannot be empty"
    elif [[ $AS -ge 0 && $AS -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Somatic Symptoms: Gastrointestinal [0-2]"
while :; do
    read GIT
    if [[ -z $GIT ]]; then
	echo "Entry cannot be empty"
    elif [[ $GIT -ge 0 && $GIT -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "General Somatic Symptoms [0-2]"
while :; do
    read SSX
    if [[ -z $SSX ]]; then
	echo "Entry cannot be empty"
    elif [[ $SSX -ge 0 && $SSX -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Genital Symptoms [0-2]"
while :; do
    read GSX
    if [[ -z $GSX ]]; then
	echo "Entry cannot be empty"
    elif [[ $GSX -ge 0 && $GSX -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Hypochondriasis [0-4]"
while :; do
    read HC
    if [[ -z $HC ]]; then
	echo "Entry cannot be empty"
    elif [[ $HC -ge 0 && $HC -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Loss of weight, either according to the patient or according to weekly measurements [0-3]"
while :; do
    read WT
    if [[ -z $WT ]]; then
	echo "Entry cannot be empty"
    elif [[ $WT -ge 0 && $WT -le 3 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Insight [0-2]"
while :; do
    read IS
    if [[ -z $IS ]]; then
	echo "Entry cannot be empty"
    elif [[ $IS -ge 0 && $IS -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
HRSD=$(echo $D + $G + $S + $I1 + $I2 + $I3 + $W + $R + $A + $AP + $AS + $GIT + $SSX + $GSX + $HC + $WT + $IS | bc)
echo "The total HRSD score is" $HRSD"/53"
