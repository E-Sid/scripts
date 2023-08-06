#/!/bin/bash
echo "This is Addenrbooke's Cognitive Examination (ACE-R) Calculator"
echo "==============================================================="
echo "Attention: Please, type score for orientation in time [0-5]"
while :; do
    read A1
    if [[ -z $A1 ]]; then
	echo "Entry cannot be empty"
    elif [[ $A1 -ge 0 && $A1 -le 5 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Attention: Please, re-type score for orientation in time out of 4 to calculate M-ACE (day, date, month, year [0-4]"
while :; do
    read A0
    if [[ -z $A0 ]]; then
	echo "Entry cannot be empty"
    elif [[ $A1 -eq 5 && $A0 -le 3 ]] || [[ $A1 -eq 4 && $A0 -le 2 ]] || [[ $A1 -eq 3 && $A0 -le 1 ]] || [[ $A1 -eq 2 && $A0 -le 0 ]]; then
	echo "Value is out of range. Please, enter correct value"	            
    elif [[ $A0 -ge 0 && $A0 -le 4 ]] && [[ $A1 -ge $A0 ]]; then
	break	
	else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Attention: Please, type score for orientation in place [0-5]"
while :; do
    read A2
        if [[ -z $A2 ]]; then
	echo "Entry cannot be empty"
    elif [[ $A2 -ge 0 && $A2 -le 5 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Attention: Please, type score for 3 item registration [0-3]"
while :; do
    read A3
    if [[ -z $A3 ]]; then
	echo "Entry cannot be empty"
    elif [[ $A3 -ge 0 && $A3 -le 3 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Attention: Please, type score for serial 7s calculation (concentration) [0-5]"
while :; do
    read A4
    if [[ -z $A4 ]]; then
	echo "Entry cannot be empty"
    elif [[ $A4 -ge 0 && $A4 -le 5 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Memory: Please, type score for 3 item recall (immediate recall) [0-3]"
while :; do
    read M1
    if [[ -z $M1 ]]; then
	echo "Entry cannot be empty"
    elif [[ $M1 -ge 0 && $M1 -le 3 && $M1 -le $A3 ]]; then
	break
    elif [[ $M1 -gt $A3 ]]; then
	echo "Value is out of range. Please, enter a valid number"
    else echo "Value is out of rang. Please, enter a valid number"
    fi
done
echo "Memory: Please, type score for name and address registration (anterograde memory) [0-7]"
while :; do
    read M2
    if [[ -z $M2 ]]; then
	echo "Entry cannot be empty"
    elif [[ $M2 -ge 0 && $M2 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Memory: Please, type score for general knowledge (retrograde memory) [0-4]"
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
echo "Fluency: Please, type score for letter fluency [0-7]"
while :; do
    read F1
    if [[ -z $F1 ]]; then
	echo "Entry cannot be empty"
    elif [[ $F1 -ge 0 && $F1 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Fluency: Please, type score for category fluency [0-7]"
while :; do
    read F2
    if [[ -z $F2 ]]; then
	echo "Entry cannot be empty"
    elif [[ $F2 -ge 0 && $F2 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Language: Please, type score for 'Close your eyes' (Comprehension) [0-1]"
while :; do
    read L0
    if [[ -z $L0 ]]; then
	echo "Entry cannot be empty"
    elif [[ $L0 -ge 0 && $L0 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Language: Please, type score for comprehension [0-3]"
while :; do
    read L1
        if [[ -z $L1 ]]; then
	echo "Entry cannot be empty"
    elif [[ $L1 -ge 0 && $L1 -le 3 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Language: Please, type score for sentence writing [0-1]"
while :; do
    read L2
    if [[ -z $L2 ]]; then
	echo "Entry cannot be empty"
    elif [[ $L2 -ge 0 && $L2 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Language: Please, type score for single word repetition [0-2]"
while :; do
    read L3
    if [[ -z $L3 ]]; then
	echo "Entry cannot be empty"
    elif [[ $L3 -ge 0 && $L3 -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Language: Please, type score for proverb-1, repetition [0-1]"
while :; do
    read L4
    if [[ -z $L4 ]]; then
	echo "Entry cannot be empty"
    elif [[ $L4 -ge 0 && $L4 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Language: Please, type score for proverb-2, repetition [0-1]"
while :; do
    read L5
    if [[ -z $L5 ]]; then
	echo "Entry cannot be empty"
    elif [[ $L5 -ge 0 && $L5 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Language: Please, type score for object naming [0-2]"
while :; do
    read L6A
    if [[ -z $L6A ]]; then
	echo "Entry cannot be empty"
    elif [[ $L6A -ge 0 && $L6A -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Language: Please, type score for object naming [0-10]"
while :; do
    read L6
    if [[ -z $L6 ]]; then
	echo "Entry cannot be empty"
    elif [[ $L6 -ge 0 && $L6 -le 10 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Language: Please, type score for comprehension [0-4]"
while :; do
    read L7
    if [[ -z $L7 ]]; then
	echo "Entry cannot be empty"
    elif [[ $L7 -ge 0 && $L7 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Language: Please, type score for reading [0-1]"
while :; do
    read L8
    if [[ -z $L8 ]]; then
	echo "Entry cannot be empty"
    elif [[ $L8 -ge 0 && $L8 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Visuospatial: Please, type score for Intersecting Pentagons [0-1]"
while :; do
    read V1
    if [[ -z $V1 ]]; then
	echo "Entry cannot be empty"
    elif [[ $V1 -ge 0 && $V1 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Visuospatial: Please, type score for 3D Wire Cube [0-2]"
while :; do
    read V2
    if [[ -z $V2 ]]; then
	echo "Entry cannot be empty"
    elif [[ $V2 -ge 0 && $V2 -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Visuospatial: Please, type score for Clock Drawing Test [0-5]"
while :; do
    read V3
    if [[ -z $V3 ]]; then
	echo "Entry cannot be empty"
    elif [[ $V3 -ge 0 && $V3 -le 5 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Visuospatial: Please, type score for Counting Dots (preceptual abilities) [0-4]"
while :; do
    read V4
    if [[ -z $V4 ]]; then
	echo "Entry cannot be empty"
    elif [[ $V4 -ge 0 && $V4 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Visuospatial: Please, type score for Identifying Letters (preceptual abilities) [0-4]"
while :; do
    read V5
    if [[ -z $V5 ]]; then
	echo "Entry cannot be empty"
    elif [[ $V5 -ge 0 && $V5 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Memory: Please, type score for recall of name and address (delayed recall) [0-7]"
while :; do
    read M4
    if [[ -z $M4 ]]; then
	echo "Entry cannot be empty"
    elif [[ $M4 -ge 0 && $M4 -le 7 && $M4 -le $M2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Memory: Please, type score for recognition of name and address (delayed recognition) [0-5]"
while :; do
    read M5
    if [[ -z $M5 ]]; then
	echo "Entry cannot be empty"
    elif  [[ $M4 -eq 6 && $M5 -lt 4 ]] || [[ $M4 -eq 5 && $M5 -lt 3 ]]; then
	echo "Value, is out of range. Please, enter a valid number"
    elif [[ $M4 -eq 7 && $M5 -eq 5 ]] || [[ $M4 -ne 7 && $M5 -ge 0 && $M5 -le 5 ]]; then
        break
    else
       echo "Value is out of range. Please, enter a valid number"
    fi	
done
acer=$(echo $A1 + $A2 +  $A3 + $A4 + $M1 + $F1 + $F2 + $M2 + $M3 + $L0 + $L1+ $L2 + $L3 + $L4 + $L5 + $L6A + $L6 + $L7 + $L8 + $V1 + $V2 + $V3 + $V4 + $V5 + $M4 + $M5 | bc) 
echo "The total ACE-R score is" $acer "/100"
mmse=$(echo $A1 + $A2 + $A3 + $A4 + $M1 + $L0 + $L1 + $L2 + $L5 + $L6A + $V1 | bc) 
echo "The MMSE score is" $mmse "/30"
attention=$(echo $A1 + $A2 + $A3 +$A4 | bc) 
echo "The Attention subset score is" $attention "/18"
memory=$(echo $M1 + $M2 + $M3 + $M4 + $M5 | bc) 
echo "The memory subset score is" $memory "/26"
fluency=$(echo $F1 + $F2 | bc) 
echo "The Fluency subset score is" $fluency "/14"
language=$(echo $L0 + $L1+ $L2 + $L3 + $L4 + $L5 + $L6A +$L6 + $L7 + $L8 | bc) 
echo "The Language subset score is" $language "/26"
visuospatial=$(echo $V1 + $V2 + $V3 + $V4 + $V5 | bc) 
echo "The Visuospatial subset score is" $visuospatial "/16"
