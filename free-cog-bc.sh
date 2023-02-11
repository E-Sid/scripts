#/!/bin/bash

echo "This is Free-Cog Cognitive Examination"
echo "======================================"
echo "Can you tell me anything that's in the news recently? [0-1]"
while :; do
    read C01
    if [[ $C01 -ge 0 && $C01 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "What day of the week is it today; what month, year? [0-3]"
while :; do
    read C02
    if [[ $C02 -ge 0 && $C02 -le 3 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Where are we? [0-3]"
while :; do
    read C03
    if [[ $C03 -ge 0 && $C03 -le 3 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Repeat 5 words (watch, car, scarf, pen, house) (no score) [0]"
echo " "
echo "Take 6 away from 70 and keep subtracting until I say stop [0-3]"
while :; do
    read C04
    if [[ $C04 -ge 0 && $C04 -le 3 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Spell 'plate' backwards [0-2]"
while :; do
    read C05
    if [[ $C05 -ge 0 && $C05 -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Repeat 5 words [0-5]"
while :; do
    read C06
    if [[ $C06 -ge 0 && $C06 -le 5 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "In this circle draw a clock face with numbers and with hands set to ten past eleven [0-3]"
while :; do
    read C07
    if [[ $C07 -ge 0 && $C07 -le 3 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Name (ear and fingernail) [0-2]"
while :; do
    read C08
    if [[ $C08 -ge 0 && $C08 -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Name as many different animals as you can in 1 minute [0-1]"
while :; do
    read C09
    if [[ $C09 -ge 0 && $C09 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Repeat this sentence 'Don't beat about the bush' [0-1]"
while :; do
    read C10
    if [[ $C10 -ge 0 && $C10 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Write a sentence [0-1]"
while :; do
    read C11
    if [[ $C11 -ge 0 && $C11 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "You have bought a birthday card and want to send it by post - tell me how you would do it? [0-1]"
while :; do
    read E01
    if [[ $E01 -ge 0 && $E01 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "If you were going to take a bus (or train) what yould you need? [0-1]"
while :; do
    read E02
    if [[ $E02 -ge 0 && $E02 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Could you tell me how you would make a cup of tea or coffee for yourself? [0-1]"
while :; do
    read E03
    if [[ $E03 -ge 0 && $E03 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "If you discovered a fire at home, what would you do? [0-1]"
while :; do
    read E04
    if [[ $E04 -ge 0 && $E04 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Could tell me the steps you took in order to get dressed as you are today? [0-1]"
while :; do
    read E05
    if [[ $E05 -ge 0 && $E05 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
freecog=$(echo $C01 + $C02 + $C03 + $C04 + $C05 + $C06 + $C07 + $C08 + $C09 + $C10 + $C11 + $E01 + $E02 + $E03 + $E04 + $E05 | bc)
echo "The Total Free-Cog Score is" $freecog "/30"
cognitive=$(echo $C01 + $C02 + $C03 + $C04 + $C05 + $C06 + $C07 + $C08 + $C09 + $C10 + $C11 | bc)
echo "The Cognitive subscore is" $cognitive "/25"
executive=$(echo $E01 + $E02 + $E03 + $E04 + $E05 | bc)
echo "The Executive function subscore is" $executive "/5"
