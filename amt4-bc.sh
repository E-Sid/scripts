#/!/bin/bash
echo "This is Abbreviated Mental Test-4 (AMT4) Calculator"
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
echo "What is your date of birth (day & month)? [0-1]"
while :; do
    read A7
    if [[ $A7 -ge 0 && $A7 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done

ans=$(echo $A1 + $A4 + $A5 + $A7 | bc)
echo "The total AMT4 score is" $ans"/4"
