#/!/bin/bash

max=220
echo "This is maximum heart rate equation"
echo "Please, enter age in years"
while :; do
read age
    if [[ -z $age ]]; then
    echo "Entry cannot be empty"
    elif [[ $age -le 160 && $age -ge 0 ]]; then
	 break
    else
	echo "Value is out of range, please, enter a valid age"
    fi
done
ans=$(echo $max - $age)
echo "The maximum heart rate is" $(($ans)) "bpm"
