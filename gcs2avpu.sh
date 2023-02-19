#/bin/bash
echo "This is Glasgow Coma Scale to AVPU score converter"
echo "=================================================="
echo "Please, type the total GCS score"
while :; do
    read gcs
    if [[ -z $gcs ]]; then
	echo "Entry cannot be empty"
    elif [[ $gcs -ge 3 && $gcs -le 15 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done    
if [[ $gcs -le 15 && $gcs -ge 14 ]]; then
    echo "AVPU score is A (Alert)"
    elif [[ $gcs -le 13 && $gcs -ge 9 ]]; then
    echo "AVPU score is V (Verbal Response)"
    elif [[ $gcs -le 8 && $gcs -ge 4 ]]; then
    echo "AVPU score is P (Pain Response)"
    elif [[ $gcs -eq 3 ]]; then
    echo "AVPU score is U (Unresponsive)"
fi
