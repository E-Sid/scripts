#/!/bin/bash
echo "This is Abbreviated Mental Test Score (AMTS) Calculator"
echo "======================================================="
echo "What is your age? [0-1]"
while :; do
    read A1
    if [[ $A1 -ge 0 && $A1 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "What is the time to the nearest hour? [0-1]"
while :; do
    read A2
    if [[ $A2 -ge 0 && $A2 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Give the patient an address, and ask them to repeat it at the end of the test? [0-1]"
while :; do
    read A3
    if [[ $A3 -ge 0 && $A3 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "What is the year? [0-1]"
while :; do
    read A4
    if [[ $A4 -ge 0 && $A4 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "What is the name of this place? [0-1]"
while :; do
    read A5
    if [[ $A5 -ge 0 && $A5 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Can the patient recognise two persons? [0-1]"
while :; do
    read A6
    if [[ $A6 -ge 0 && $A6 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "What is your date of birth (day & month)? [0-1]"
while :; do
    read A7
    if [[ $A7 -ge 0 && $A7 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "In what year did World War II end? [0-1]"
while :; do
    read A8
    if [[ $A8 -ge 0 && $A8 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Name the current Monarch/President/Prime Minister? [0-1]"
while :; do
    read A9
    if [[ $A9 -ge 0 && $A9 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Count backwards from 20 down to 10? [0-1]"
while :; do
    read A10
    if [[ $A10 -ge 0 && $A10 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
ans=$(echo $A1 + $A2 + $A3 + $A4 + $A5 + $A6 + $A7 + $A8 + $A9 + $A10 | bc)
echo "The total AMTS score is" $ans"/10"
