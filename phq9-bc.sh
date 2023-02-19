#/!/bin/bash

echo " This is Patient Health Questionnaire (PHQ-9) Depression"
echo "========================================================"
echo "Please, type the number that is closest to your answer after each question"
echo "Over the last 2 weeks, how often have you been bothered by the following problems?"
echo "I. Little interest or pleasure in doing things"
echo "0. Not at all"
echo "1. Several Days"
echo "2. More than half the days"
echo "3. Nearly every day"
while :; do
    read A
    if [[ -z $A ]]; then
	echo "Entry cannot be empty"
    elif [[ $A -ge 0 && $A -le 3 ]] ; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "II. Feeling down, depressed or hopeless"
echo "0. Not at all"
echo "1. Several Days"
echo "2. More than half the days"
echo "3. Nearly every day"
while :; do
    read B
    if [[ -z $B ]]; then
	echo "Entry cannot be empty"
    elif [[ $B -ge 0 && $B -le 3 ]] ; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "III. Trouble falling or staying asleep, or sleeping too much"
echo "0. Not at all"
echo "1. Several Days"
echo "2. More than half the days"
echo "3. Nearly every day"
while :; do
    read C
    if [[ -z $C ]]; then
	echo "Entry cannot be empty"
    elif [[ $C -ge 0 && $C -le 3 ]] ; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "IV. Feeling tired or having little energy"
echo "0. Not at all"
echo "1. Several Days"
echo "2. More than half the days"
echo "3. Nearly every day"
while :; do
    read D
    if [[ -z $D ]]; then
	echo "Entry cannot be empty"
    elif [[ $D -ge 0 && $D -le 3 ]] ; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "V. Poor appetite or overeating"
echo "0. Not at all"
echo "1. Several Days"
echo "2. More than half the days"
echo "3. Nearly every day"
while :; do
    read E
    if [[ -z $E ]]; then
	echo "Entry cannot be empty"
    elif [[ $E -ge 0 && $E -le 3 ]] ; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "VI. Feeling bad about yourself - or that you are a failure or have let yourself or your family down"
echo "0. Not at all"
echo "1. Several Days"
echo "2. More than half the days"
echo "3. Nearly every day"
while :; do
    read F
    if [[ -z $F ]]; then
	echo "Entry cannot be empty"
    elif [[ $F -ge 0 && $F -le 3 ]] ; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "VII. Trouble concentrating on things, such as reading the newspaper or watching television"
echo "0. Not at all"
echo "1. Several Days"
echo "2. More than half the days"
echo "3. Nearly every day"
while :; do
    read G
    if [[ -z $G ]]; then
	echo "Entry cannot be empty"
    elif [[ $G -ge 0 && $G -le 3 ]] ; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "VIII. Moving or speaking so slowly that other people could have noticed? or the opposite - being so fidgety or resltless that you have been moving around a lot more than usual"
echo "0. Not at all"
echo "1. Several Days"
echo "2. More than half the days"
echo "3. Nearly every day"
while :; do
    read H
    if [[ -z $H ]]; then
	echo "Entry cannot be empty"
    elif [[ $H -ge 0 && $H -le 3 ]] ; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "IX. Thoughts that you would be better off dead or of hurting yourself in some way"
echo "0. Not at all"
echo "1. Several Days"
echo "2. More than half the days"
echo "3. Nearly every day"
while :; do
    read I
    if [[ -z $I ]]; then
	echo "Entry cannot be empty"
    elif [[ $I -ge 0 && $I -le 3 ]] ; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
ans=$(echo $A + $B + $C + $D + $E + $F + $G + $H + $I | bc)
echo "The PHQ-9 score is" $ans"/27"
