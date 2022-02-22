#/!/bin/bash
echo "Please, type the Addenbrooke's Cognitive Examination (ACE-III) score"
while :; do
    read ace
    if [[ $ace -ge 0 && $ace -le 100 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done    
echo "According to Matias-Guiu et al (2018) doi:10.1017/S104161021700268X"
if [[ $ace -ge 0 && $ace -le 7 ]]; then
    echo "MMSE score is 0/30"
    elif [[ $ace -ge 8 && $ace -le 10 ]]; then
    echo "MMSE score is 1/30"
    elif [[  $ace -ge 11 && $ace -le 12 ]]; then
    echo "MMSE score is 2/30"
    elif [[  $ace -ge 13 && $ace -le 14 ]]; then
    echo "MMSE score is 3/30"
    elif [[  $ace -ge 15 && $ace -le 16 ]]; then
    echo "MMSE score is 4/30"
    elif [[  $ace -ge 17 && $ace -le 17 ]]; then
    echo "MMSE score is 5/30"
    elif [[  $ace -ge 18 && $ace -le 19 ]]; then
    echo "MMSE score is 6/30"
    elif [[  $ace -ge 20 && $ace -le 21 ]]; then
    echo "MMSE score is 7/30"
    elif [[  $ace -ge 22 && $ace -le 22 ]]; then
    echo "MMSE score is 8/30"
    elif [[  $ace -ge 23 && $ace -le 24 ]]; then
    echo "MMSE score is 9/30"
    elif [[  $ace -ge 25 && $ace -le 26 ]]; then
    echo "MMSE score is 10/30"
    elif [[  $ace -ge 27 && $ace -le 28 ]]; then
    echo "MMSE score is 11/30"
    elif [[  $ace -ge 29 && $ace -le 31 ]]; then
    echo "MMSE score is 12/30"
    elif [[  $ace -ge 32 && $ace -le 33 ]]; then
    echo "MMSE score is 13/30"
    elif [[  $ace -ge 34 && $ace -le 36 ]]; then
    echo "MMSE score is 14/30"
    elif [[  $ace -ge 37 && $ace -le 38 ]]; then
    echo "MMSE score is 15/30"
    elif [[  $ace -ge 39 && $ace -le 41 ]]; then
    echo "MMSE score is 16/30"
    elif [[  $ace -ge 42 && $ace -le 44 ]]; then
    echo "MMSE score is 17/30"
    elif [[  $ace -ge 45 && $ace -le 48 ]]; then
    echo "MMSE score is 18/30"
    elif [[  $ace -ge 49 && $ace -le 51 ]]; then
    echo "MMSE score is 19/30"
    elif [[  $ace -ge 52 && $ace -le 55 ]]; then
    echo "MMSE score is 20/30"
    elif [[  $ace -ge 56 && $ace -le 59 ]]; then
    echo "MMSE score is 21/30"
    elif [[  $ace -ge 60 && $ace -le 63 ]]; then
    echo "MMSE score is 22/30"
    elif [[  $ace -ge 64 && $ace -le 68 ]]; then
    echo "MMSE score is 23/30"
    elif [[  $ace -ge 69 && $ace -le 73 ]]; then
    echo "MMSE score is 24/30"
    elif [[  $ace -ge 74 && $ace -le 78 ]]; then
    echo "MMSE score is 25/30"
    elif [[  $ace -ge 79 && $ace -le 83 ]]; then
    echo "MMSE score is 26/30"
    elif [[  $ace -ge 84 && $ace -le 88 ]]; then
    echo "MMSE score is 27/30"
    elif [[  $ace -ge 89 && $ace -le 93 ]]; then
    echo "MMSE score is 28/30"
    elif [[  $ace -ge 94 && $ace -le 98 ]]; then
    echo "MMSE score is 29/30"
    elif [[  $ace -ge 99 && $ace -le 100 ]]; then
    echo "MMSE score is 30/30"
fi
