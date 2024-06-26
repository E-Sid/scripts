#!/bin/bash

# Define a function that takes in three parameters: eye, verbal, and motor, and calculates the GCS score
  # Validate the input data
echo "Glasgow Coma Score calculator & GCS to AcvPU converter"
echo "======================================================"
echo "                                                      "  
echo "Please, enter score for eye opening [1-4]"
while :; do
    read E
    if [[ -z $E ]]; then
	echo "Entry cannot be empty"
    elif [[ $E -ge 1 && $E -le 4 ]]; then
    break
  else
    echo "Invalid input for eye opening, please, re-enter score"
  fi
done
echo "Please, enter score for verbal response [1-5]"
while :; do
    read V
    if [[ -z $V ]]; then
	echo "Entry cannot be empty"
    elif [[ $V -ge 1 && $V -le 5 ]]; then
      break
    else
    echo "Invalid input for verbal parameter, please, re-enter score"
  fi
done
echo "Please, enter response for motor response [1-6]"
while :; do
    read M
    if [[ -z $M ]]; then
	echo "Entry cannot be empty"
  elif [[ $M -ge 1 && $M -le 6 ]]; then
    break
  else
    echo "Invalid input for motor parameter, please, re-enter score"
  fi
done
gcs=$(echo $E + $V + $M)
echo "The Glasgow Coma Scale (GCS) score is" "E"$E"V"$V"M"$M
echo "Total score GCS score is" $(($gcs)) "/15"

if [[ $gcs -eq 15 ]]; then
    echo "AcVPU score is A (Alert)"
elif [[ $gcs -eq 14 ]]; then
     echo "AcVPU score is C (Confused)"
elif [[ $gcs -le 13 && $gcs -ge 9 ]]; then
    echo "AcVPU score is V (Verbal Response)"
elif [[ $gcs -le 8 && $gcs -ge 4 ]]; then
    echo "AcVPU score is P (Pain Response)"
elif [[ $gcs -eq 3 ]]; then
    echo "AcVPU score is U (Unresponsive)"
fi
