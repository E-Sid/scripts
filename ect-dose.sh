#/!/bin/bash

echo "Please, enter the patient's age in years"
while :; do
    read age
    if [[ $age -ge 12 && $age -le 150 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
dose=$(echo $age \* 5 | bc -l)
halfdose=$(echo $age \* 2.5 | bc -l)
echo "According to Age-Based Method the dose is" $dose "mC"
echo "According to the Half Age-Based Method, the dose is" $halfdose "mC"
echo "=================================================================="
echo "If you want to calculate the charge press ENTER (RETURN), otherwise, press ctrl+C to exit"
echo "=========================================================================================="
echo "Please, enter the Pulse Width"
read PW
echo "Please, enter the Frequency in Hertz"
while :; do
    read F
    if [[ $F -ge 0 && $F -le 140 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter the Duration in seconds"
read D
echo "Please, enter the current in Ampere (A)"
read I
echo "The equation is Q=PW*2F*D*I"
Q=$(echo $PW \* 2 \* $F \* $D \* $I | bc)
echo "The Charge is" $Q "mC"
