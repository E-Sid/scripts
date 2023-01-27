#!/bin/bash
x=220
echo "This is Maximum Heart Rate Calculator"
echo "Please, enter age in years"
read y
ans=$(echo $x - $y)
echo "The Maximum Heart rate is" $(($ans))
