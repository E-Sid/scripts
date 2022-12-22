#/!/bin/bash

echo "This is Addenrbooke's Cognitive Examination (ACE-R) Calculator"
echo "==============================================================="
echo "Attention: Please, type score for orientation in time [0-5]"
while :; do
    read A1
    if [[ $A1 -ge 0 && $A1 -le 5 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Attention: Please, type score for orientation in place [0-5]"
while :; do
    read A2
    if [[ $A2 -ge 0 && $A2 -le 5 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Attention: Please, type score for 3 item registration [0-3]"
while :; do
    read A3
    if [[ $A3 -ge 0 && $A3 -le 3 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Attention: Please, type score for serial 7s calculation(concentration) [0-5]"
while :; do
    read A4
    if [[ $A4 -ge 0 && $A4 -le 5 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Memory: Please, type score for 3 item recall (immediate recall) [0-3]"
while :; do
    read M1
    if [[ $M1 -ge 0 && $M1 -le 3 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Memory: Please, type score for name and address registration (anterograde memory) [0-7]"
while :; do
    read M2
    if [[ $M2 -ge 0 && $M2 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Memory: Please, type score for general knowledge (retrograde memory) [0-4]"
while :; do
    read M3
    if [[ $M3 -ge 0 && $M3 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Fluency: Please, type score for letter fluency [0-7]"
while :; do
    read F1
    if [[ $F1 -ge 0 && $F1 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Fleuncy: Please, type score for category fluency [0-7]"
while :; do
    read F2
    if [[ $F2 -ge 0 && $F2 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Language: Please, type score for 'Close your eyes' (Comprehension) [0-1]"
while :; do
    read L0
    if [[ $L0 -ge 0 && $L0 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Language: Please, type score for comprehension [0-3]"
while :; do
    read L1
    if [[ $L1 -ge 0 && $L1 -le 3 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Language: Please, type score for sentence writing [0-1]"
while :; do
    read L2
    if [[ $L2 -ge 0 && $L2 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Language: Please, type score for single word repetition [0-2]"
while :; do
    read L3
    if [[ $L3 -ge 0 && $L3 -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Language: Please, type score for proverb-1, repetition [0-1]"
while :; do
    read L4
    if [[ $L4 -ge 0 && $L4 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Language: Please, type score for proverb-2, repetition [0-1]"
while :; do
    read L5
    if [[ $L5 -ge 0 && $L5 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Language: Please, type score for object naming [0-2]"
while :; do
    read L6A
    if [[ $L6A -ge 0 && $L6A -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Language: Please, type score for object naming [0-10]"
while :; do
    read L6
    if [[ $L6 -ge 0 && $L6 -le 10 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Language: Please, type score for comprehension [0-4]"
while :; do
    read L7
    if [[ $L7 -ge 0 && $L7 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Language: Please, type score for reading [0-1]"
while :; do
    read L8
    if [[ $L8 -ge 0 && $L8 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Visuospatial: Please, type score for intersecting Pentagons [0-1]"
while :; do
    read V1
    if [[ $V1 -ge 0 && $V1 -le 1 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done

echo "Visuospatial: Please, type score for 3D Wire Cube [0-2]"
while :; do
    read V2
    if [[ $V2 -ge 0 && $V2 -le 2 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Visuospatial: Please, type score for Clock Drawing Test [0-5]"
while :; do
    read V3
    if [[ $V3 -ge 0 && $V3 -le 5 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Visuospatial: Please, type score for Counting Dots (preceptual abilities) [0-4]"
while :; do
    read V4
    if [[ $V4 -ge 0 && $V4 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done

echo "Visuospatial: Please, type score for Identifying Letters (preceptual abilities) [0-4]"
while :; do
    read V5
    if [[ $V5 -ge 0 && $V5 -le 4 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Memory: Please, type score for recall of name and address (delayed recall) [0-7]"
while :; do
    read M4
    if [[ $M4 -ge 0 && $M4 -le 7 ]]; then
	break
    else
	echo "Value is out of range. Please, enter a valid number"
    fi
done
echo "Memory: Please, type score for reognition of name and address (delayed recognition) [0-5]"
while :; do
    read M5
    if [[ $M5 -ge 0 && $M5 -le 5 ]]; then
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
