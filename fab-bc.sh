#/!/bin/bash

echo "This is Frontal Lobe Assessment Battery (FAB) score calculator"
echo "=============================================================="
echo "Please, type score for similatiries (conceptualisation) [0-3]"
while :; do
    read S
    if [[ -z $S ]]; then
	echo "Entry cannot be NULL"
    elif [[ $S -ge 0 && $S -le 3 ]]; then
       break   
    else	
	echo "Value is out of range. Please, type a valid number"
    fi
done
echo "Please, type score for lexical fluency (mental flexibility) [0-3]"
while :; do
    read F
    if [[ -z $F ]]; then
	echo "Entry cannot be NULL"
    elif [[ $F -ge 0 && $F -le 3 ]]; then
	break
    else
	echo "Value is out of range. Please, type a valid number"
    fi
done
echo "Please, type score for motor series (Luria) test (programming) [0-3]"
while :; do
    read P
    if [[ -z $P ]]; then
	echo "Entry cannot be NULL"
    if [[ $P -ge 0 && $P -le 3 ]]; then
	break
    else
	echo "Value is out of range. Please, type a valid number"
    fi
done
echo "Please, type score for conflicting instructions (sensitivity to interference) [0-3]"
while :; do
    read C
    if [[ -z $C ]]; then
	echo "Entry cannot be NULL"
    if [[ $C -ge 0 && $C -le 3 ]]; then
	break
    else
	echo "Value is out of range. Please, type a valid number"
    fi
done
echo "Please, type score for Go-No Go (inhibitory control) [0-3]"
while :; do
    read G
    if [[ -z $B ]]; then
	echo "Entry cannot be NULL"
    if [[ $G -ge 0 && $G -le 3 ]]; then
	break
    else
	echo "Value is out of range. Please, type a valid number"
    fi
done
echo "Please, type score for prehension behaviour (environmental autonomy) [0-3]"
while :; do
    read B
    if [[ -z $B ]]; then
	echo "Entry cannot be NULL"
    if [[ $B -ge 0 && $B -le 3 ]]; then
	break
    else
	echo "Value is out of range. Please, type a valid number"
    fi
done
fab=$(echo $S + $F + $P + $C + $G + $B | bc)
echo "The total FAB score is" $fab"/18"
