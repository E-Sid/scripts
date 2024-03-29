#/!/bin/bash

echo "This is Montreal Cognitive Assessment (MoCA) scoring"
echo "===================================================="
echo "Visuospatial/Executive: Please, type the score for visuospatial abilities [0-5]"
while :; do
    read V
    if [[ $V -ge 0 && $V -le 5 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done

echo "Naming: Please, type score for naming [0-3]"
while :; do
    read N
    if [[ $N -ge 0 && $N -le 3 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done

echo "Attention: Please, type score for digit span [0-2]"
while :; do
    read A1
    if [[ $A1 -ge 0 && $A1 -le 2 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Attention: Please, type score for vigilance [0-1]"
while :; do
    read A2
    if [[ $A2 -ge 0 && $A2 -le 1 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done

echo "Attention: Please, type score for serial 7s subtraction [0-3]"
while :; do
    read A3
    if [[ $A3 -ge 0 && $A3 -le 3 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done

echo "Language: Please, type score for sentence repetition [0-2]"
while :; do
    read L1
    if [[ $L1 -ge 0 && $L1 -le 2 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done

echo "Language: Please, type score for verbal fluency [0-1]"
while :; do
    read L2
    if [[ $L2 -ge 0 && $L2 -le 1 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done

echo "Abstraction: Please, type score for abstraction [0-2]"
while :; do
    read A4
    if [[ $A4 -ge 0 && $A4 -le 2 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Delayed Recall: Please, type score for delayed recall [0-5]"
while :; do
    read DR
    if [[ $DR -ge 0 && $DR -le 5 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done

echo "Orientation: Please, type score for orientation [0-6]"
while :; do
    read O
    if [[ $O -ge 0 && $O -le 6 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done

echo "The total MoCA score is"
calc $V + $N + $A1 + $A2 + $A3 + $L1 + $L2 + $A4 + $DR + $O
echo "         /30"


