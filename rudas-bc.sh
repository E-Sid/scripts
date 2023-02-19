#/!/bin/bash

echo "This is Rowland Universal Dementia Assessment Scale (RUDAS) score calculator"
echo "============================================================================"
echo "Please, type score for visuospatial orientation [0-5]"
while :; do
    read VSO
    if [[ -z $VSO ]]; then
	echo "Entry cannot be empty"
    elif [[ $VSO -ge 0 && $VSO -le 5 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, type score for praxis [0-2]"
while :; do
    read P
    if [[ -z $P ]]; then
	echo "Entry cannot be empty"
    elif [[ $P -ge 0 && $P -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, type score for visuoconstructional drawing [0-3]"
while :; do
    read VCD
    if [[ -z $VCD ]]; then
	echo "Entry cannot be empty"
    elif [[ $VCD -ge 0 && $VCD -le 3 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, type score for judgement [0-4]"
while :; do
    read J
    if [[ -z $J ]]; then
	echo "Entry cannot be empty"
    elif [[ $J -ge 0 && $J -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, type score for memory recall [0-8]"
while :; do
    read M
    if [[ -z $M ]]; then
	echo "Entry cannot be empty"
    elif [[ $M -ge 0 && $M -le 8 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, type score for language [0-8]"
while :; do
    read L
    if [[ -z $L ]]; then
	echo "Entry cannot be empty"
    elif [[ $L -ge 0 && $L -le 8 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
rudas=$(echo $VSO + $P + $VCD + $J + $M + $L | bc)
echo "The total RUDAS score is" $rudas"/30"
