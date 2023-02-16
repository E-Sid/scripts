#!/bin/bash

# Define a function that takes in three parameters: eye, verbal, and motor, and calculates the GCS score
  # Validate the input data
echo "Please, enter score for eye opening [1-4]"
while :; do
read E
  if [[ $E -ge 1 && $E -le 4 ]]; then
    break
  else
    echo "Invalid input for eye opening, please, re-enter score"
  fi
done
echo "Please, enter score for verbal response [1-5]"
while :; do
read V
  if [[ $V -ge 1 && $V -le 5 ]]; then
    break
  else
    echo "Invalid input for verbal parameter, please, re-enter score"
  fi
done
echo "Please, enter response for motor response [1-6]"
while :; do
read M
  if [[ $M -ge 1 && $M -le 6 ]]; then
    break
  else
    echo "Invalid input for motor parameter, please, re-enter score"
  fi
done
score=$(echo $E + $V + $M)
echo "The Glasgow Coma Scale (GCS) score is" "E"$E"V"$V"M"$M
echo "Total score GCS score is" $(($score)) "/15"
