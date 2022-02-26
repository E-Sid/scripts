#/!/bin/bash
echo "Health of The Nation Outcome Scale (HoNOS)"
echo "==========================================="
echo "1 Overactive, aggressive, disruptive or agitated behaviour [0-4]"
while :; do
    read B
    if [[ $B -ge 0 && $B -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "2 Non-accidental self-injury [0-4]"
while :; do
    read SH
    if [[ $SH -ge 0 && $SH -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "3 Problem-drinking or drug-taking[0-4]"
while :; do
    read SUD
    if [[ $SUD -ge 0 && $SUD -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "4 Cognitive problems [0-4]"
while :; do
    read COG
    if [[ $COG -ge 0 && $COG -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "5 Physical illness or disability problems [0-4]"
while :; do
    read PI
    if [[ $PI -ge 0 && $PI -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "6 Problems with hallucinations & delusions [0-4]"
while :; do
    read H
    if [[ $H -ge 0 && $H -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "7 Problems with depressed mood [0-4]"
while :; do
    read M
    if [[ $M -ge 0 && $M -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "8 Other mental & behavioural problems [0-4]"
while :; do
    read O
    if [[ $O -ge 0 && $O -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "9 Problems with relationships [0-4]"
while :; do
    read R
    if [[ $R -ge 0 && $R -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "10 Problems with activities of daily living [0-4]"
while :; do
    read ADL
    if [[ $ADL -ge 0 && $ADL -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "11 Problems with living conditions [0-4]"
while :; do
    read LC
    if [[ $LC -ge 0 && $LC -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "12 Problems with occupation and activities [0-4]"
while :; do
    read W
    if [[ $W -ge 0 && $W -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
HoNOS=$(echo $B + $SH + $SUD + $COG + $PI + $H + $M + $O + $R + $ADL + $LC + $W | bc)
echo "The total HoNOS score is" $HoNOS"/48"
