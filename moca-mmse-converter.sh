#/!/bin/bash
echo "Please, type the Montreal Cognitive Assessment (MoCA) score"
while :; do
    read ans
    if [[ -z $ans ]]; then
	echo "Entry cannot be empty"
    elif [[ $ans -ge 0 && $ans -le 30 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done    
echo "According to Steenoven, et al.(2014) doi:10.1002/mds.2602"
if [[ $ans -ge 0 && $ans -le 0 ]]; then
    echo "MMSE score is 0/30"
    elif [[ $ans -ge 1 && $ans -le 1 ]]; then
    echo "MMSE score is 6/30"
    elif [[ $ans -ge 2 && $ans -le 2 ]]; then
    echo "MMSE score is 9/30"
    elif [[ $ans -ge 3 && $ans -le 3 ]]; then
    echo "MMSE score is 11/30"
    elif [[ $ans -ge 4 && $ans -le 4 ]]; then
    echo "MMSE score is 12/30"
    elif [[ $ans -ge 5 && $ans -le 5 ]]; then
    echo "MMSE score is 13/30"
    elif [[ $ans -ge 6 && $ans -le 6 ]]; then
    echo "MMSE score is 14/30"
    elif [[ $ans -ge 7 && $ans -le 8 ]]; then
    echo "MMSE score is 15/30"
    elif [[ $ans -ge 9 && $ans -le 9 ]]; then
    echo "MMSE score is 16/30"
    elif [[ $ans -ge 10 && $ans -le 10 ]]; then
    echo "MMSE score is 17/30"
    elif [[ $ans -ge 11 && $ans -le 12 ]]; then
    echo "MMSE score is 18/30"
    elif [[ $ans -ge 13 && $ans -le 13 ]]; then
    echo "MMSE score is 19/30"
    elif [[ $ans -ge 14 && $ans -le 14 ]]; then
    echo "MMSE score is 20/30"
    elif [[ $ans -ge 15 && $ans -le 15 ]]; then
    echo "MMSE score is 21/30"
    elif [[ $ans -ge 16 && $ans -le 17 ]]; then
    echo "MMSE score is 22/30"
    elif [[ $ans -ge 18 && $ans -le 18 ]]; then
    echo "MMSE score is 23/30"
    elif [[ $ans -ge 19 && $ans -le 19 ]]; then
    echo "MMSE score is 24/30"
    elif [[ $ans -ge 20 && $ans -le 20 ]]; then
    echo "MMSE score is 25/30"
    elif [[ $ans -ge 21 && $ans -le 22 ]]; then
    echo "MMSE score is 26/30"
    elif [[ $ans -ge 23 && $ans -le 23 ]]; then
    echo "MMSE score is 27/30"
    elif [[ $ans -ge 24 && $ans -le 25 ]]; then
    echo "MMSE score is 28/30"
    elif [[ $ans -ge 26 && $ans -le 27 ]]; then
    echo "MMSE score is 29/30"
    elif [[ $ans -ge 28 && $ans -le 30 ]]; then
    echo "MMSE score is 30/30"
fi
