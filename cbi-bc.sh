#/!/bin/bash

echo "This is Cambridge Behavioural Inventory (CBI) Calculator"
echo "=================================================="
echo "Please, answer the questions about how often does the patient show the problem? ie frequency of behaviours over the past month:"
echo "0 = never"
echo "1 = a few times per month"
echo "2 = a few times per week"
echo "3 = daily"
echo "4 = constantly"
echo "======================================================================="
echo "Memory: 1. Forgets to pass on phone messages"
while :; do
    read M1
    if [[ -z $M1 ]]; then
	echo "Entry cannot be empty"
    elif [[ $M1 -ge 0 && $M1 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Memory: 2. Has poor day-to-day memory (e.g. about conversations, trips etc.)"
while :; do
    read M2
    if [[ -z $M2 ]]; then
	echo "Entry cannot be empty"
    elif [[ $M2 -ge 0 && $M2 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Memory: 3. Asks the same question over and over again"
while :; do
    read M3
    if [[ -z $M3 ]]; then
	echo "Entry cannot be empty"
    elif [[ $M3 -ge 0 && $M3 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Memory: 4. Loses or misplaces things"
while :; do
    read M4
    if [[ -z $M4 ]]; then
	echo "Entry cannot be empty"
    elif [[ $M4 -ge 0 && $M4 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Memory: 5. Forgets the names of familiar people"
while :; do
    read M5
    if [[ -z $M5 ]]; then
	echo "Entry cannot be empty"
    elif [[ $M5 -ge 0 && $M5 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Memory 6. Forgets the names of objects and things"
while :; do
    read M6
    if [[ -z $M6 ]]; then
	echo "Entry cannot be empty"
    elif [[ $M6 -ge 0 && $M6 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Orientation and Attention: 7. Has difficulty completing activities once started"
while :; do
    read O7
    if [[ -z $O7 ]]; then
	echo "Entry cannot be empty"
    elif [[ $O7 -ge 0 && $O7 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Orientation and Attention: 8. Shows poor concentration when reading or watching television"
while :; do
    read O8
    if [[ -z $O8 ]]; then
	echo "Entry cannot be empty"
    elif [[ $O8 -ge 0 && $O8 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Orientation and Attention: 9. Forgets what day it is"
while :; do
    read O9
    if [[ -z $O9 ]]; then
	echo "Entry cannot be empty"
    elif [[ $O9 -ge 0 && $O9 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Orientation and Attention: 10. Forgets what time of day it is"
while :; do
    read O10
    if [[ -z $O10 ]]; then
	echo "Entry cannot be empty"
    elif [[ $O10 -ge 0 && $O10 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Orientation and Attention: 11. Gets the present mixed up with past situations"
while :; do
    read O11
    if [[ -z $O11 ]]; then
	echo "Entry cannot be empty"
    elif [[ $O11 -ge 0 && $O11 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Orientation and Attention: 12. Becomes confused or muddled in unusual surroundings"
while :; do
    read O12
    if [[ -z $O12 ]]; then
	echo "Entry cannot be empty"
    elif [[ $O12 -ge 0 && $O12 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Orientation and Attention: 13. Gets lost inside the house"
while :; do
    read O13
    if [[ -z $O13 ]]; then
	echo "Entry cannot be empty"
    elif [[ $O13 -ge 0 && $O13 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Everyday Skills: 14. Has difficulties using electrical appliances (e.g. TV, radio, cooker, washing machine)"
while :; do
    read ADL14
    if [[ -z $ADL14 ]]; then
	echo "Entry cannot be empty"
    elif [[ $ADL14 -ge 0 && $ADL14 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Everyday Skills 15. Has problems preparing meals"
while :; do
    read ADL15
    if [[ -z $ADL15 ]]; then
	echo "Entry cannot be empty"
    elif [[ $ADL15 -ge 0 && $ADL15 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Everyday Skills: 16. Has difficulties writing (letters, Christmas cards, lists etc.)"
while :; do
    read ADL16
    if [[ -z $ADL16 ]]; then
	echo "Entry cannot be empty"
    elif [[ $ADL16 -ge 0 && $ADL16 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Everyday Skills: 17. Has difficulties using the telephone"
while :; do
    read ADL17
    if [[ -z $ADL17 ]]; then
	echo "Entry cannot be empty"
    elif [[ $ADL17 -ge 0 && $ADL17 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Everyday Skills: 18. Has difficulties making a hot drink (e.g. tea/coffee)"
while :; do
    read ADL18
    if [[ -z $ADL18 ]]; then
	echo "Entry cannot be empty"
    elif [[ $ADL18 -ge 0 && $ADL18 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Everyday Skills: 19. Has difficulties shopping"
while :; do
    read ADL19
    if [[ -z $ADL19 ]]; then
	echo "Entry cannot be empty"
    elif [[ $ADL19 -ge 0 && $ADL19 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Everyday Skills: 20. Has problems handling money or paying bills"
while :; do
    read ADL20
    if [[ -z $ADL20 ]]; then
	echo "Entry cannot be empty"
    elif [[ $ADL20 -ge 0 && $ADL20 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Everyday Skills: Has difficulties with household chores"
while :; do
    read ADL21
    if [[ -z $ADL21 ]]; then
	echo "Entry cannot be empty"
    elif [[ $ADL21 -ge 0 && $ADL21 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Self Care: 22. Has difficulties travelling to places by self (either by driving or on public transportation)"
while :; do
    read SC22
    if [[ -z $SC22 ]]; then
	echo "Entry cannot be empty"
    elif [[ $SC22 -ge 0 && $SC22 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Self Care: 23. Has difficulties grooming self (e.g. shaving or putting on make-up)"
while :; do
    read SC23
    if [[ -z $SC23 ]]; then
	echo "Entry cannot be empty"
    elif [[ $SC23 -ge 0 && $SC23 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Self Care: 24. Has difficulties dressing self"
while :; do
    read SC24
    if [[ -z $SC24 ]]; then
	echo "Entry cannot be empty"
    elif [[ $SC24 -ge 0 && $SC24 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Self Care: 25. Has problems feeding self without assistance"
while :; do
    read SC25
    if [[ -z $SC25 ]]; then
	echo "Entry cannot be empty"
    elif [[ $SC25 -ge 0 && $SC25 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Self Care: 26. Has problems bathing or showering self"
while :; do
    read SC26
    if [[ -z $SC26 ]]; then
	echo "Entry cannot be empty"
    elif [[ $SC26 -ge 0 && $SC26 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Self Care: 27. Has difficulties using toilet by self"
while :; do
    read SC27
    if [[ -z $SC27 ]]; then
	echo "Entry cannot be empty"
    elif [[ $SC27 -ge 0 && $SC27 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Self Care: 28. Wets self with urine"
while :; do
    read SC28
    if [[ -z $SC28 ]]; then
	echo "Entry cannot be empty"
    elif [[ $SC28 -ge 0 && $SC28 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Mood: 29. Cries"
while :; do
    read MO29
    if [[ -z $MO29 ]]; then
	echo "Entry cannot be empty"
    elif [[ $MO29 -ge 0 && $MO29 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Mood: 30. Appears sad or depressed"
while :; do
    read MO30
    if [[ -z $MO30 ]]; then
	echo "Entry cannot be empty"
    elif [[ $MO30 -ge 0 && $MO30 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Mood: 31. Is anxious or fearful"
while :; do
    read MO31
    if [[ -z $MO31 ]]; then
	echo "Entry cannot be empty"
    elif [[ $MO31 -ge 0 && $MO31 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Mood: 32. Is very restless or agitated"
while :; do
    read MO32
    if [[ -z $MO32 ]]; then
	echo "Entry cannot be empty"
    elif [[ $MO32 -ge 0 && $MO32 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Mood: 33. Is very irritable"
while :; do
    read MO33
    if [[ -z $MO33 ]]; then
	echo "Entry cannot be empty"
    elif [[ $MO33 -ge 0 && $MO33 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Mood: 34. Has rapid shifts between different emotions"
while :; do
    read MO34
    if [[ -z $MO34 ]]; then
	echo "Entry cannot be empty"
    elif [[ $MO34 -ge 0 && $MO34 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Mood: 35. Appears inappropriately cheerful"
while :; do
    read MO35
    if [[ -z $MO35 ]]; then
	echo "Entry cannot be empty"
    elif [[ $MO35 -ge 0 && $MO35 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Mood: 36. Talks big e.g. claims more welath than true"
while :; do
    read MO36
    if [[ -z $MO36 ]]; then
	echo "Entry cannot be empty"
    elif [[ $MO36 -ge 0 && $MO36 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Mood: 37. Finds humour or laughs at things others do not find funny"
while :; do
    read MO37
    if [[ -z $MO37 ]]; then
	echo "Entry cannot be empty"
    elif [[ $MO37 -ge 0 && $MO37 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Beliefs: 38. Is suspicious or accusative"
while :; do
    read B38
    if [[ -z $B38 ]]; then
	echo "Entry cannot be empty"
    elif [[ $B38 -ge 0 && $B38 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Beliefs: 39. Sees things that are not really there (visual hallucinations)"
while :; do
    read B39
    if [[ -z $B39 ]]; then
	echo "Entry cannot be empty"
    elif [[ $B39 -ge 0 && $B39 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Beliefs: 40. Hears voices that are not really there (auditory hallucinations)"
while :; do
    read B40
    if [[ -z $B40 ]]; then
	echo "Entry cannot be empty"
    elif [[ $B40 -ge 0 && $B40 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Beliefs: 41. Has odd or bizarre ideas that cannot be true"
while :; do
    read B41
    if [[ -z $B41 ]]; then
	echo "Entry cannot be empty"
    elif [[ $B41 -ge 0 && $B41 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Beliefs: 42. Believs that additional people are living in the house"
while :; do
    read B42
    if [[ -z $B42 ]]; then
	echo "Entry cannot be empty"
    elif [[ $B42 -ge 0 && $B42 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Beliefs: 43. Beliefs: Thinks that a family member has been replaced by an impostor"
while :; do
    read B43
    if [[ -z $B43 ]]; then
	echo "Entry cannot be empty"
    elif [[ $B43 -ge 0 && $B43 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Beliefs: 44. Thinks that people on the TV are actually in the room"
while :; do
    read B44
    if [[ -z $B44 ]]; then
	echo "Entry cannot be empty"
    elif [[ $B44 -ge 0 && $B44 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Challenging Behaviour: 45. Has temper outbursts"
while :; do
    read CB45
    if [[ -z $CB45 ]]; then
	echo "Entry cannot be empty"
    elif [[ $CB45 -ge 0 && $CB45 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Challenging Behaviour: 46. Threatens to harm self/others or property"
while :; do
    read CB46
    if [[ -z $CB46 ]]; then
	echo "Entry cannot be empty"
    elif [[ $CB46 -ge 0 && $CB46 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Challenging Behaviour: 47. Is uncooperative when asked to do something"
while :; do
    read CB47
    if [[ -z $CB47 ]]; then
	echo "Entry cannot be empty"
    elif [[ $CB47 -ge 0 && $CB47 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Challenging Behaviour: 48. Disturbs others by shouting or yelling"
while :; do
    read CB48
    if [[ -z $CB48 ]]; then
	echo "Entry cannot be empty"
    elif [[ $CB48 -ge 0 && $CB48 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Disinhibition: 49. Shows socially embarassing behaviour"
while :; do
    read D49
    if [[ -z $D49 ]]; then
	echo "Entry cannot be empty"
    elif [[ $D49 -ge 0 && $D49 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Disinhibition: 50. Makes tactless or suggestive remarks"
while :; do
    read D50
    if [[ -z $D50 ]]; then
	echo "Entry cannot be empty"
    elif [[ $D50 -ge 0 && $D50 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Disnihibition: 51. Displays suggestive behaviour (e.g. touching inappropriately)"
while :; do
    read D51
    if [[ -z $D51 ]]; then
	echo "Entry cannot be empty"
    elif [[ $D51 -ge 0 && $D51 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Disinhibition: 52. Acts impulsively without thinking"
while :; do
    read D52
    if [[ -z $D52 ]]; then
	echo "Entry cannot be empty"
    elif [[ $D52 -ge 0 && $D52 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Disnihibition: 53. Talks to total strangers as if they know them"
while :; do
    read D53
    if [[ -z $D53 ]]; then
	echo "Entry cannot be empty"
    elif [[ $D53 -ge 0 && $D53 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Eating Habits: 54. Prefers sweet foods more than before"
while :; do
    read E54
    if [[ -z $E54 ]]; then
	echo "Entry cannot be empty"
    elif [[ $E54 -ge 0 && $E54 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Eating Habits: 55. Wants to eat the same foods repeatedly"
while :; do
    read E55
    if [[ -z $E55 ]]; then
	echo "Entry cannot be empty"
    elif [[ $E55 -ge 0 && $E55 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Eating Habits: 56. Her/his appetite is greater, s/he eats more than before"
while :; do
    read E56
    if [[ -z $E56 ]]; then
	echo "Entry cannot be empty"
    elif [[ $E56 -ge 0 && $E56 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Eating Habits: 57. Table manners are declining e.g. stuffing food into mouth"
while :; do
    read E57
    if [[ -z $E57 ]]; then
	echo "Entry cannot be empty"
    elif [[ $E57 -ge 0 && $E57 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Eating Habits: 58. Eats non-edible foodstuffs or things not normally eaten"
while :; do
    read E58
    if [[ -z $E58 ]]; then
	echo "Entry cannot be empty"
    elif [[ $E58 -ge 0 && $E58 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Sleep: 59. Sleep is disturbed at night"
while :; do
    read S59
    if [[ -z $S59 ]]; then
	echo "Entry cannot be empty"
    elif [[ $S59 -ge 0 && $S59 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Sleep: 60. Sleeps more by day than before (cat naps etc.)"
while :; do
    read S60
    if [[ -z $S60 ]]; then
	echo "Entry cannot be empty"
    elif [[ $S60 -ge 0 && $S60 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Stereotypic and Motor Behaviours: 61. Is rigid in her/his ideas and opinions"
while :; do
    read SMB61
    if [[ -z $SMB61 ]]; then
	echo "Entry cannot be empty"
    elif [[ $SMB61 -ge 0 && $SMB61 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Stereotypic and Motor Behaviours: 62. Develops routines from which s/he can't easily be discouraged e.g. wanting to eat or go for walks at fixed times"
while :; do
    read SMB62
    if [[ -z $SMB62 ]]; then
	echo "Entry cannot be empty"
    elif [[ $SMB62 -ge 0 && $SMB62 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Stereotypic and Motor Behaviours: 63. Exhibits rituals e.g. takes the same route across the kitchen, only steps on certain floor tiles"
while :; do
    read SMB63
    if [[ -z $SMB63 ]]; then
	echo "Entry cannot be empty"
    elif [[ $SMB63 -ge 0 && $SMB63 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Stereotypic and Motor Behaviours: 64. Clock watches or appears pre-occupied with time"
while :; do
    read SMB64
    if [[ -z $SMB64 ]]; then
	echo "Entry cannot be empty"
    elif [[ $SMB64 -ge 0 && $SMB64 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Sterotypic and Motor Behaviours: 65. Appears pre-occupied with counting, numbers, puzzles or jigsaws"
while :; do
    read SMB65
    if [[ -z $SMB65 ]]; then
	echo "Entry cannot be empty"
    elif [[ $SMB65 -ge 0 && $SMB65 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Stereotypic and Motor Behaviours: 66. Takes, hides or heards things, or packs away special items"
while :; do
    read SMB66
    if [[ -z $SMB66 ]]; then
	echo "Entry cannot be empty"
    elif [[ $SMB66 -ge 0 && $SMB66 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Stereotypic and Motor Behaviours: 67. Repeatedly uses the same expression or catch phrase"
while :; do
    read SMB67
    if [[ -z $SMB67 ]]; then
	echo "Entry cannot be empty"
    elif [[ $SMB67 -ge 0 && $SMB67 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Stereotypic and Motor Behaviours: 68. S/he immediately repeats words and sentences that you or others have just said (echolalia)"
while :; do
    read SMB68
    if [[ -z $SMB68 ]]; then
	echo "Entry cannot be empty"
    elif [[ $SMB68 -ge 0 && $SMB68 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Stereotypic and Motor Behaviours: 69. Paces around without purpose"
while :; do
    read SMB69
    if [[ -z $SMB69 ]]; then
	echo "Entry cannot be empty"
    elif [[ $SMB69 -ge 0 && $SMB69 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Stereotypic and Motor Behaviours: 70. Rummages around excessively"
while :; do
    read SMB70
    if [[ -z $SMB70 ]]; then
	echo "Entry cannot be empty"
    elif [[ $SMB70 -ge 0 && $SMB70 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Stereotypic and Motor Behaviours: 71. S/he fidgets (e.g. bounces, taps feet/hands) a lot"
while :; do
    read SMB71
    if [[ -z $SMB71 ]]; then
	echo "Entry cannot be empty"
    elif [[ $SMB71 -ge 0 && $SMB71 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Motivation: 72. Shows less enthusiasm for his/her usual interests"
while :; do
    read MTV72
    if [[ -z $MTV72 ]]; then
	echo "Entry cannot be empty"
    elif [[ $MTV72 -ge 0 && $MTV72 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Motivation: 73. Shows little interest in doing new things"
while :; do
    read MTV73
    if [[ -z $MTV73 ]]; then
	echo "Entry cannot be empty"
    elif [[ $MTV73 -ge 0 && $MTV73 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Motivation: 74. Requires nagging to start activities and chores"
while :; do
    read MTV74
    if [[ -z $MTV74 ]]; then
	echo "Entry cannot be empty"
    elif [[ $MTV74 -ge 0 && $MTV74 -le 4 ]]; then
	echo "valid number"
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Motivation: 75. Shows no interest in attending social functions"
while :; do
    read MTV75
    if [[ -z $MTV75 ]]; then
	echo "Entry cannot be empty"
    elif [[ $MTV75 -ge 0 && $MTV75 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Motivation: 76. Fails to maintain motivation to keep in contact with friends and family"
while :; do
    read MTV76
    if [[ -z $MTV76 ]]; then
	echo "Entry cannot be empty"
    elif [[ $MTV76 -ge 0 && $MTV76 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Motivation: 77. Withdraws from others, fails to start conversations"
while :; do
    read MTV77
    if [[ -z $MTV77 ]]; then
	echo "Entry cannot be empty"
    elif [[ $MTV77 -ge 0 && $MTV77 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Motivation: 78. Appears indifferent to the worries and concerns of family members"
while :; do
    read MTV78
    if [[ -z $MTV78 ]]; then
	echo "Entry cannot be empty"
    elif [[ $MTV78 -ge 0 && $MTV78 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Motivation: 79. Shows reduced affection"
while :; do
    read MTV79
    if [[ -z $MTV79 ]]; then
	echo "Entry cannot be empty"
    elif [[ $MTV79 -ge 0 && $MTV79 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Insight/Awareness: 80. Shows insight into changes in behaviour and personality (if appropriate)"
while :; do
    read I80
    if [[ -z $I80 ]]; then
	echo "Entry cannot be empty"
    elif [[ $I80 -ge 0 && $I80 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Insight/Awareness: 81. Shows insight into memory problems"
while :; do
    read I81
    if [[ -z $I81 ]]; then
	echo "Entry cannot be empty"
    elif [[ $I81 -ge 0 && $I81 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
cbi=$(echo $M1 + $M2 + $M3 + $M4 + $M5 + $M6 + $O7 + $O8 + $O9 + $O10 + $O11 + $O12 + $O13 + $ADL14 + $ADL15 + $ADL16 + $ADL17 + $ADL18 + $ADL19 + $ADL20 + $ADL21 + $SC22 + $SC23 + $SC24 + $SC25 + $SC26 + $SC27 + $SC28 + $MO29 + $MO30 + $MO31 + $MO32 + $MO33 + $MO34 + $MO35 + $MO36 + $MO37 + $B38 + $B39 + $B40 + $B41 +$B42 + $B43 + $B44 + $CB45 + $CB46 + $CB47 + $CB48 + $D49 + $D50 + $D51 + $D52 + $D53 + $E54 + $E55 + $E56 + $E57 + $E58 + $S59 + $S60 + $SMB61 + $SMB62 + $SMB63 + $SMB64 + $SMB65 + $SMB66 + $SMB67 + $SMB68 + $SMB69 + $SMB70 + $SMB71 + $MTV72 + $MTV73 + $MTV74 + $MTV75 + $MTV76 + $MTV77 + $MTV78 + $MTV79 + $I80 + $I81 | bc)
echo "The total CBI score is" $cbi "/324"
memory=$(echo $M1 + $M2 + $M3 + $M4 + $M5 + $M6 | bc) 
echo "The Memory score is" $memory "/24"
orientation=$(echo $O7 + $O8 + $O9 + $O10 + $O11 + $O12 + $O13 | bc)
echo "The Orientation and Attention score is" $orientation "/28"
adls=$(echo $ADL14 + $ADL15 + $ADL16 + $ADL17 + $ADL18 + $ADL19 + $ADL20 + $ADL21 | bc) 
echo "The Activities of Daily Living score is" $adls "/32"
selfcare=$(echo $SC22 + $SC23 + $SC24 + $SC25 + $SC26 + $SC27 + $SC28 | bc) 
echo "The Self Care score is" $selfcare "/28"
mood=$(echo $MO29 + $MO30 + $MO31 + $MO32 + $MO33 + $MO34 + $MO35 + $MO36 + $MO37 | bc)
echo "The Mood score is" $mood "/36"
belief=$(echo $B38 + $B39 + $B40 + $B41 +$B42 + $B43 + $B44 | bc) 
echo "The Beliefs score is" $belief "/28"
behaviour=$(echo $CB45 + $CB46 + $CB47 + $CB48 | bc) 
echo "The Challenging Behaviour score is" $behaviour "/16"
disinhibition=$(echo $D49 + $D50 + $D51 + $D52 + $D53 | bc) 
echo "The Disnihibition score is" $disinhibition "/20"
eating=$(echo $E54 + $E55 + $E56 + $E57 + $E58 | bc)
echo "The Eating Habit score is" $eating "/20"
sleep=$(echo $S59 + $S60 | bc) 
echo "The sleep score is" $sleep "/8"
motor=$(echo $SMB61 + $SMB62 + $SMB63 + $SMB64 + $SMB65 + $SMB66 + $SMB67 + $SMB68 + $SMB69 + $SMB70 + $SMB71 | bc)
echo "The Stereotypic and Motor Behaviours score is" $motor "/44"
motivation=$(echo $MTV72 + $MTV73 + $MTV74 + $MTV75 + $MTV76 + $MTV77 + $MTV78 + $MTV79 | bc) 
echo "The Motivation score is" $motivation "/32"
insight=$(echo $I80 +$I81 | bc)
echo "The Insight/Awareness score is" $insight "/8"
