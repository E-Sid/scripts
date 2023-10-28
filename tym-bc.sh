#/!/bin/bash

echo "This is Test Your Memory (TYM) calculator"
echo "========================================="
echo "Please, enter score for orientation in time, DoB and name [0-10]"
while :; do
    read O
    if [[ -z $O ]]; then
	echo "Entry cannot be empty"
    elif [[ $O -ge 0 && $O -le 10 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter score for copying sentence [0-2]"
while :; do
    read W
    if [[ -z $W ]]; then
	echo "Entry cannot be empty"
    elif [[ $W -ge 0 && $W -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter score for general knowledge [0-3]"
while :; do
    read GK
    if [[ -z $GK ]]; then
	echo "Entry cannot be empty"
    elif [[ $GK -ge 0 && $GK -le 3 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter score for calculation [0-4]"
while :; do
    read C
    if [[ -z $C ]]; then
	echo "Entry cannot be empty"
    elif [[ $C -ge 0 && $C -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter score for letter fluency [0-4]"
while :; do
    read F
    if [[ -z $F ]]; then
	echo "Entry cannot be empty"
    elif [[ $F -ge 0 && $F -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter score for similarities [0-4]"
while :; do
    read A
    if [[ -z $A ]]; then
	echo "Entry cannot be empty"
    elif [[ $A -ge 0 && $A -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter score for naming [0-5]"
while :; do
    read N
    if [[ -z $N ]]; then
	echo "Entry cannot be empty"
    elif [[ $N -ge 0 && $N -le 5 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter score for praxis (joining circles) [0-3]"
while :; do
    read P
    if [[ -z $P ]]; then
	echo "Entry cannot be empty"
    elif [[ $P -ge 0 && $P -le 3 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter score for clock drawing test [0-4]"
while :; do
    read CDT
    if [[ -z $CDT ]]; then
	echo "Entry cannot be empty"
    elif [[ $CDT -ge 0 && $CDT -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter score for delayed recall [0-6]"
while :; do
    read M
    if [[ -z $M ]]; then
	echo "Entry cannot be empty"
    elif [[ $M -ge 0 && $M -le 6 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter score for help given (none, trivial, minor, moderate, major)[0-5]"
while :; do
    read H
    if [[ -z $H ]]; then
	echo "Entry cannot be empty"
    elif [[ $H -ge 0 && $H -le 5 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
TYM=$(echo $O + $W + $GK + $C + $F +  $A + $N + $P + $CDT + $M + $H | bc)
echo "The total TYM score is" $TYM "/50"
