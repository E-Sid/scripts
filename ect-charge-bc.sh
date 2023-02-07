#/!/bin/bash
echo "This is ECT Charge Calculator"
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
