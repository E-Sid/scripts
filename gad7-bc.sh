#/!/bin/bash

echo "This is Generalised Anxiety Disorder (GAD-7) Assessment"
echo "======================================================"
echo "Please, type the number that is closest to your answer after each question"
echo "Over the last 2 weeks, how often have you been bothered by the following problems?"
echo "I. Feeling nervous, anxious or on edge"
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
echo "II. Not being able to stop or control worrying"
echo "I. Feeling nervous, anxious or on edge"
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
echo "III. Worrying too much about different things"
echo "I. Feeling nervous, anxious or on edge"
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
echo "IV. Tourble relaxing"
echo "I. Feeling nervous, anxious or on edge"
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
echo "V. Being restless that it is hard to sit still"
echo "I. Feeling nervous, anxious or on edge"
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
echo "VI. Becoming easily annoyed or irritable"
echo "I. Feeling nervous, anxious or on edge"
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
echo "VII. Feeling afraid as if something awful might happen"
echo "I. Feeling nervous, anxious or on edge"
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
ans=$(echo $A + $B + $C + $D + $E + $F + $G | bc)
echo "The GAD-7 score is" $ans"/21"
