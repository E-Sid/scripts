#/!/bin/bash
echo "This is Brief Psychiatric Rating Scale (BPRS) Calculator"
echo "--------------------------------------------------------"
echo "Please, enter value for somatic concern [0-7]"
while :; do
    read BPRS1
    if [[ $BPRS1 -ge 0 && $BPRS1 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter value for anxiety [0-7]"
while :; do
    read BPRS2
    if [[ $BPRS2 -ge 0 && $BPRS2 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter value for emotional withdrawal [0-7]"
while :; do
    read BPRS3
    if [[ $BPRS3 -ge 0 && $BPRS3 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter value for conceptual disorganization [0-7]"
while :; do
    read BPRS4
    if [[ $BPRS4 -ge 0 && $BPRS4 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter value for guilt feelings [0-7]"
while :; do
    read BPRS5
    if [[ $BPRS5 -ge 0 && $BPRS5 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter value for tension [0-7]"
while :; do
    read BPRS6
    if [[ $BPRS6 -ge 0 && $BPRS6 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter value for mannerisms and posturing [0-7]"
while :; do
    read BPRS7
    if [[ $BPRS7 -ge 0 && $BPRS7 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter value for grandiosity [0-7]"
while :; do
    read BPRS8
    if [[ $BPRS8 -ge 0 && $BPRS8 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter value for depressive mood [0-7]"
while :; do
    read BPRS9
    if [[ $BPRS9 -ge 0 && $BPRS9 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter value for hostility [0-7]"
while :; do
    read BPRS10
    if [[ $BPRS10 -ge 0 && $BPRS10 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter value for suspiciousness [0-7]"
while :; do
    read BPRS11
    if [[ $BPRS11 -ge 0 && $BPRS11 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter value for hallucinatory behaviour [0-7]"
while :; do
    read BPRS12
    if [[ $BPRS12 -ge 0 && $BPRS12 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter value for motor retardation [0-7]"
while :; do
    read BPRS13
    if [[ $BPRS13 -ge 0 && $BPRS13 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter value for uncooperativeness [0-7]"
while :; do
    read BPRS14
    if [[ $BPRS14 -ge 0 && $BPRS14 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter value for unusual thought content [0-7]"
while :; do
    read BPRS15
    if [[ $BPRS15 -ge 0 && $BPRS15 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter value for blunted affect [0-7]"
while :; do
    read BPRS16
    if [[ $BPRS16 -ge 0 && $BPRS16 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter value for excitement [0-7]"
while :; do
    read BPRS17
    if [[ $BPRS17 -ge 0 && $BPRS17 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Please, enter value for disorientation [0-7]"
while :; do
    read BPRS18
    if [[ $BPRS18 -ge 0 && $BPRS18 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
bprs=$(echo $BPRS1 + $BPRS2 + $BPRS3 + $BPRS4 + $BPRS5 + $BPRS6 + $BPRS7 + $BPRS8 + $BPRS9 + $BPRS10 + $BPRS11 + $BPRS12 + $BPRS13 + $BPRS14 + $BPRS15 + $BPRS16 + $BPRS17 + $BPRS18) 
echo "BPRS score is" $(($bprs))"/126"
