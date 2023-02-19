#/!/bin/bash
echo "This is Abbreviated Mental Test Score (AMTS) Calculator"
echo "======================================================="
echo "What is your age? [0-1]"
while :; do
    read A1
    if [[ -z $A1 ]]; then
	echo "Entry cannot be empty"
    elif [[ $A1 -ge 0 && $A1 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "What is the time to the nearest hour? [0-1]"
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
echo "Give the patient an address, and ask them to repeat it at the end of the test? [0-1]"
while :; do
    read A3
    if [[ -z $A3 ]]; then
	echo "Entry cannot be empty"
    elif [[ $A3 -ge 0 && $A3 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "What is the year? [0-1]"
while :; do
    read A4
    if [[ -z $A4 ]]; then
	echo "Entry cannot be empty"
    elif [[ $A4 -ge 0 && $A4 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "What is the name of this place? [0-1]"
while :; do
    read A5
    if [[ -z $A5 ]]; then
	echo "Entry cannot be empty"
    elif [[ $A5 -ge 0 && $A5 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Can the patient recognise two persons? [0-1]"
while :; do
    read A6
    if [[ -z $A6 ]]; then
	echo "Entry cannot be empty"
    elif [[ $A6 -ge 0 && $A6 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "What is your date of birth (day & month)? [0-1]"
while :; do
    read A7
    if [[ -z $A7 ]]; then
	echo "Entry cannot be empty"
    elif [[ $A7 -ge 0 && $A7 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "In what year did World War II end? [0-1]"
while :; do
    read A8
    if [[ -z $A8 ]]; then
	echo "Entry cannot be empty"
    elif [[ $A8 -ge 0 && $A8 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Name the current Monarch/President/Prime Minister? [0-1]"
while :; do
    read A9
    if [[ -z $A9 ]]; then
	echo "Entry cannot be empty"
    elif [[ $A9 -ge 0 && $A9 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Count backwards from 20 down to 10? [0-1]"
while :; do
    read A10
    if [[ -z $A10 ]]; then
	echo "Entry cannot be empty"
    elif [[ $A10 -ge 0 && $A10 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
ans=$(echo $A1 + $A2 + $A3 + $A4 + $A5 + $A6 + $A7 + $A8 + $A9 + $A10 | bc)
echo "The total AMTS score is" $ans"/10"
