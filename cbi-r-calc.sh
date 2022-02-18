#/!/bin/bash

echo "This is Cambridge Behavioural Inventory - Revised (CBI-R) Calculator"
echo "=================================================="
echo "Please, answer the questions about how often does the patient show the problem? ie frequency of behaviours over the past month:"
echo "0 = never"
echo "1 = a few times per month"
echo "2 = a few times per week"
echo "3 = daily"
echo "4 = constantly"
echo "======================================================================="
echo "Memory and Orientation: 2. Has poor day-to-day memory (e.g. about conversations, trips etc.)"
while :; do
    read M2
    if [[ $M2 -ge 0 && $M2 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Memory: 3. Asks the same question over and over again"
while :; do
    read M3
    if [[ $M3 -ge 0 && $M3 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Memory: 4. Loses or misplaces things"
while :; do
    read M4
    if [[ $M4 -ge 0 && $M4 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Memory: 5. Forgets the names of familiar people"
while :; do
    read M5
    if [[ $M5 -ge 0 && $M5 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Memory 6. Forgets the names of objects and things"
while :; do
    read M6
    if [[ $M6 -ge 0 && $M6 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Orientation and Attention: 8. Shows poor concentration when reading or watching television"
while :; do
    read O8
    if [[ $O8 -ge 0 && $O8 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Orientation and Attention: 9. Forgets what day it is"
while :; do
    read O9
    if [[ $O9 -ge 0 && $O9 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Orientation and Attention: 12. Becomes confused or muddled in unusual surroundings"
while :; do
    read O12
    if [[ $O12 -ge 0 && $O12 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Everyday Skills: 14. Has difficulties using electrical appliances (e.g. TV, radio, cooker, washing machine)"
while :; do
    read ADL14
    if [[ $ADL14 -ge 0 && $ADL14 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Everyday Skills: 16. Has difficulties writing (letters, Christmas cards, lists etc.)"
while :; do
    read ADL16
    if [[ $ADL16 -ge 0 && $ADL16 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Everyday Skills: 17. Has difficulties using the telephone"
while :; do
    read ADL17
    if [[ $ADL17 -ge 0 && $ADL17 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Everyday Skills: 18. Has difficulties making a hot drink (e.g. tea/coffee)"
while :; do
    read ADL18
    if [[ $ADL18 -ge 0 && $ADL18 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Everyday Skills: 20. Has problems handling money or paying bills"
while :; do
    read ADL20
    if [[ $ADL20 -ge 0 && $ADL20 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Self Care: 23. Has difficulties grooming self (e.g. shaving or putting on make-up)"
while :; do
    read SC23
    if [[ $SC23 -ge 0 && $SC23 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Self Care: 24. Has difficulties dressing self"
while :; do
    read SC24
    if [[ $SC24 -ge 0 && $SC24 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Self Care: 25. Has problems feeding self without assistance"
while :; do
    read SC25
    if [[ $SC25 -ge 0 && $SC25 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Self Care: 26. Has problems bathing or showering self"
while :; do
    read SC26
    if [[ $SC26 -ge 0 && $SC26 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Abnormal Behaviour: 37. Finds humour or laughs at things others do not find funny"
while :; do
    read AB37
    if [[ $AB37 -ge 0 && $AB37 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Abnormal Behaviour: 45. Has temper outbursts"
while :; do
    read AB45
    if [[ $AB45 -ge 0 && $AB45 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Abnormal Behaviour: 47. Is uncooperative when asked to do something"
while :; do
    read AB47
    if [[ $AB47 -ge 0 && $AB47 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done

echo "Abnormal Behaviour: 49. Shows socially embarassing behaviour"
while :; do
    read AB49
    if [[ $AB49 -ge 0 && $AB49 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Abnormal Behaviour: 50. Makes tactless or suggestive remarks"
while :; do
    read AB50
    if [[ $AB50 -ge 0 && $AB50 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Abnormal Behaviour: 52. Acts impulsively without thinking"
while :; do
    read AB52
    if [[ $AB52 -ge 0 && $AB52 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Mood: 29. Cries"
while :; do
    read MO29
    if [[ $MO29 -ge 0 && $MO29 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Mood: 30. Appears sad or depressed"
while :; do
    read MO30
    if [[ $MO30 -ge 0 && $MO30 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Mood: 32. Is very restless or agitated"
while :; do
    read MO32
    if [[ $MO32 -ge 0 && $MO32 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Mood: 33. Is very irritable"
while :; do
    read MO33
    if [[ $MO33 -ge 0 && $MO33 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Beliefs: 39. Sees things that are not really there (visual hallucinations)"
while :; do
    read B39
    if [[ $B39 -ge 0 && $B39 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Beliefs: 40. Hears voices that are not really there (auditory hallucinations)"
while :; do
    read B40
    if [[ $B40 -ge 0 && $B40 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Beliefs: 41. Has odd or bizarre ideas that cannot be true"
while :; do
    read B41
    if [[ $B41 -ge 0 && $B41 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Eating Habits: 54. Prefers sweet foods more than before"
while :; do
    read E54
    if [[ $E54 -ge 0 && $E54 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Eating Habits: 55. Wants to eat the same foods repeatedly"
while :; do
    read E55
    if [[ $E55 -ge 0 && $E55 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Eating Habits: 56. Her/his appetite is greater, s/he eats more than before"
while :; do
    read E56
    if [[ $E56 -ge 0 && $E56 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Eating Habits: 57. Table manners are declining e.g. stuffing food into mouth"
while :; do
    read E57
    if [[ $E57 -ge 0 && $E57 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Sleep: 59. Sleep is disturbed at night"
while :; do
    read S59
    if [[ $S59 -ge 0 && $S59 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Sleep: 60. Sleeps more by day than before (cat naps etc.)"
while :; do
    read S60
    if [[ $S60 -ge 0 && $S60 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Stereotypic and Motor Behaviours: 61. Is rigid in her/his ideas and opinions"
while :; do
    read SMB61
    if [[ $SMB61 -ge 0 && $SMB61 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Stereotypic and Motor Behaviours: 62. Develops routines from which s/he can't easily be discouraged e.g. wanting to eat or go for walks at fixed times"
while :; do
    read SMB62
    if [[ $SMB62 -ge 0 && $SMB62 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Stereotypic and Motor Behaviours: 64. Clock watches or appears pre-occupied with time"
while :; do
    read SMB64
    if [[ $SMB64 -ge 0 && $SMB64 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Stereotypic and Motor Behaviours: 67. Repeatedly uses the same expression or catch phrase"
while :; do
    read SMB67
    if [[ $SMB67 -ge 0 && $SMB67 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Motivation: 72. Shows less enthusiasm for his/her usual interests"
while :; do
    read MTV72
    if [[ $MTV72 -ge 0 && $MTV72 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Motivation: 73. Shows little interest in doing new things"
while :; do
    read MTV73
    if [[ $MTV73 -ge 0 && $MTV73 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Motivation: 76. Fails to maintain motivation to keep in contact with friends and family"
while :; do
    read MTV76
    if [[ $MTV76 -ge 0 && $MTV76 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Motivation: 78. Appears indifferent to the worries and concerns of family members"
while :; do
    read MTV78
    if [[ $MTV78 -ge 0 && $MTV78 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Motivation: 79. Shows reduced affection"
while :; do
    read MTV79
    if [[ $MTV79 -ge 0 && $MTV79 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "The total CBI-R score is"
calc $M2 + $M3 + $M4 + $M5 + $M6 + $O8 + $O9 +  $O12 + $ADL14 + $ADL16 + $ADL17 + $ADL18 +  $ADL20 + $SC23 + $SC24 + $SC25 + $SC26 + $AB37 + $AB45 + $AB47 + $AB50 + $AB49 + $AB52 + $MO29 + $MO30 + $MO32 +  $MO33 + $B39 + $B40 + $B41 + $E54 + $E55 + $E56 + $E57 + $S59 + $S60 + $SMB61 + $SMB62 + $SMB64 + $SMB67 + $MTV72 + $MTV73 + $MTV76 + $MTV78 + $MTV79
echo "          /180"
echo "The Memory score is"
calc  $M2 + $M3 + $M4 + $M5 + $M6
echo "          /20"
echo "The Orientation and Attention score is"
calc $O8 + $O9 + $O12
echo "         /12"
echo "The Activities of Daily Living score is"
calc $ADL14 + $ADL16 + $ADL17 + $ADL18 + $ADL20 
echo "         /20"
echo "The Self Care score is"
calc $SC23 + $SC24 + $SC25 + $SC26
echo "        /16"
echo "The Abnormal Behaviour score is"
calc $AB37 + $AB45 + $AB47 + $AB49 + $AB50 + $AB52
echo "            /24"
echo "The Mood score is"
calc $MO29 + $MO30 + $MO32 + $MO33 
echo "         /16"
echo "The Beliefs score is"
calc $B39 + $B40 + $B41
echo "         /12"
echo "The Eating Habit score is"
calc $E54 + $E55 + $E56 + $E57 
echo "         /16"
echo "The sleep score is"
calc $S59 + $S60
echo "         /8"
echo "The Stereotypic and Motor Behaviours score is"
calc $SMB61 + $SMB62 +  $SMB64 + $SMB67 
echo "         /16"
echo "The Motivation score is"
calc $MTV72 + $MTV73 + $MTV76 + $MTV78 + $MTV79
echo "        /20"
