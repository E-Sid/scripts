#/!/bin/bash

echo "This is Montreal Cognitive Assessment - Blind (MoCA - Blind) scoring"
echo "===================================================================="
echo "Attention: Please, type score for digit span [0-2]"
while :; do
    read A1
    if [[ -z $A1 ]]; then
	echo "Entry cannot be empty"
    elif [[ $A1 -ge 0 && $A1 -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Attention: Please, type score for vigilance [0-1]"
while :; do
    read A2
    if [[ -z $A2 ]]; then
	echo "Entry cannot be empty"
    elif [[ $A2 -ge 0 && $A2 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Attention: Please, type score for serial 7s subtraction [0-3]"
while :; do
    read A3
    if [[ -z $A3 ]]; then
	echo "Entry cannot be empty"
    elif [[ $A3 -ge 0 && $A3 -le 3 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Language: Please, type score for sentence repetition [0-2]"
while :; do
    read L1
    if [[ -z $L1 ]]; then
	echo "Entry cannot be empty"
    elif [[ $L1 -ge 0 && $L1 -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Language: Please, type score for verbal fluency [0-1]"
while :; do
    read L2
    if [[ -z $L2 ]]; then
	echo "Entry cannot be empty"
    elif [[ $L2 -ge 0 && $L2 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Abstraction: Please, type score for abstraction [0-2]"
while :; do
    read A4
    if [[ -z $A4 ]]; then
	echo "Entry cannot be empty"
    elif [[ $A4 -ge 0 && $A4 -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Delayed Recall: Please, type score for delayed recall [0-5]"
while :; do
    read DR
    if [[ -z $DR ]]; then
	echo "Entry cannot be empty"
    elif [[ $DR -ge 0 && $DR -le 5 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Orientation: Please, type score for orientation [0-6]"
while :; do
    read O
    if [[ -z $O ]]; then
	echo "Entry cannot be empty"
    elif [[ $O -ge 0 && $O -le 6 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
mocab=$(echo $A1 + $A2 + $A3 + $L1 + $L2 + $A4 + $DR + $O | bc)
echo "The total MoCA - Blind score is" $mocab "/22"
