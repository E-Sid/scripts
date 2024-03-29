#/!/bin/bash

echo "This is Mini-Addenrbooke's Cognitive Examination (M-ACE-III) Calculator"
echo "==============================================================="
echo "Attention: Please, type score for orientation in time [0-4]"
while :; do
    read A0
    if [[ -z $A0 ]]; then
	echo "Entry cannot be empty"
    elif [[ $A0 -ge 0 && $A0 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Fleuncy: Please, type score for category fluency [0-7]"
while :; do
    read F2
    if [[ -z $F2 ]]; then
	echo "Entry cannot be empty"
    elif [[ $F2 -ge 0 && $F2 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Memory: Please, type score for name and address registration (anterograde memory) [0-7]"
while :; do
    read M2
    if [[ -z $M2 ]]; then
	echo "Entry cannot be empty"
    elif [[ $M2 -ge 0 && $M2 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Visuospatial: Please, type score for Clock Drawing Test [0-5]"
while :; do
    read V3
    if [[ -z $V3 ]]; then
	echo "Entry cannot be empty"
    elif [[ $V3 -ge 0 && $V3 -le 5 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Memory: Please, type score for recall of name and address (delayed recall) [0-7]"
while :; do
    read M4
    if [[ -z $M4 ]]; then
	echo "Entry cannot be empty"
    elif [[ $M4 -ge 0 && $M4 -le 7 && $M4 -le $M2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
ans=$(echo $A0 + $F2 + $M2 + $V3 + $M4 | bc)
echo "The total M-ACE score is" $ans "/30"

