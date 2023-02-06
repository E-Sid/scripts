#/!/bin/pwsh

write-host "This is Cambridge Behavioural Inventory - Revised (CBI-R) Calculator"
write-host "=================================================="
write-host "Please, answer the questions about how often does the patient show the problem? ie frequency of behaviours over the past month:"
write-host "0 = never"
write-host "1 = a few times per month"
write-host "2 = a few times per week"
write-host "3 = daily"
write-host "4 = constantly"
write-host "======================================================================="

[int]$M2 = Read-Host -Prompt 'Memory and Orientation: 2. Has poor day-to-day memory (e.g. about conversations, trips etc.) [0-4]'
while ($M2 -gt 4 -OR $M2 -lt 0) {
$M2 = Read-Host "value is out of range, please re-type the value"
}
[int]$M3 = Read-Host -Prompt 'Memory: 3. Asks the same question over and over again [0-4]'
while ($M3 -gt 4 -OR $M3 -lt 0) {
$M3 = Read-Host "value is out of range, please re-type the value"
}
[int]$M4 = Read-Host -Prompt 'Memory: 4. Loses or misplaces things [0-4]'
while ($M4 -gt 4 -OR $M4 -lt 0) {
$M3 = Read-Host "value is out of range, please re-type the value"
}
[int]$M5 = Read-Host -Prompt 'Memory: 5. Forgets the names of familiar people [0-4]'
while ($M5 -gt 4 -OR $M5 -lt 0) {
$M5 = Read-Host "value is out of range, please re-type the value"
}
[int]$M6 = Read-Host -Prompt 'Memory 6. Forgets the names of objects and things [0-4]'
while ($M6 -gt 4 -OR $M6 -lt 0) {
$M5 = Read-Host "value is out of range, please re-type the value"
}
[int]$O8 = Read-Host -Prompt 'Orientation and Attention: 8. Shows poor concentration when reading or watching television [0-4]'
while ($O8 -gt 4 -OR $O8 -lt 0) {
$O8 = Read-Host "value is out of range, please re-type the value"
}
[int]$O9 = Read-Host -Prompt 'Orientation and Attention: 9. Forgets what day it is [0-4]'
while ($O9 -gt 4 -OR $O9 -lt 0) {
$O8 = Read-Host "value is out of range, please re-type the value"
}
[int]$O12 = Read-Host -Prompt 'Orientation and Attention: 12. Becomes confused or muddled in unusual surroundings [0-4]'
while ($O12 -gt 4 -OR $O12 -lt 0) {
$O8 = Read-Host "value is out of range, please re-type the value"
}
[int]$ADL14 = Read-Host -Prompt 'Everyday Skills: 14. Has difficulties using electrical appliances (e.g. TV, radio, cooker, washing machine) [0-4]'
while ($ADL14 -gt 4 -OR $ADL14 -lt 0) {
$ADL14 = Read-Host "value is out of range, please re-type the value"
}
[int]$ADL16 = Read-Host -Prompt 'Everyday Skills: 16. Has difficulties writing (letters, Christmas cards, lists etc.) [0-4]'
while ($ADL16 -gt 4 -OR $ADL16 -lt 0) {
$ADL16 = Read-Host "value is out of range, please re-type the value"
}
[int]$ADL17 = Read-Host -Prompt 'Everyday Skills: 17. Has difficulties using the telephone [0-4]'
while ($ADL17 -gt 4 -OR $ADL17 -lt 0) {
$ADL17 = Read-Host "value is out of range, please re-type the value"
}
[int]$ADL18 = Read-Host -Prompt 'Everyday Skills: 18. Has difficulties making a hot drink (e.g. tea/coffee) [0-4]'
while ($ADL18 -gt 4 -OR $ADL18 -lt 0) {
$ADL18 = Read-Host "value is out of range, please re-type the value"
}
[int]$ADL20 = Read-Host -Prompt 'Everyday Skills: 20. Has problems handling money or paying bills [0-4]'
while ($ADL20 -gt 4 -OR $ADL20 -lt 0) {
$ADL20 = Read-Host "value is out of range, please re-type the value"
}
[int]$SC23 = Read-Host -Prompt 'Self Care: 23. Has difficulties grooming self (e.g. shaving or putting on make-up) [0-4]'
while ($SC23 -gt 4 -OR $SC23 -lt 0) {
$SC23 = Read-Host "value is out of range, please re-type the value"
}
[int]$SC24 = Read-Host -Prompt 'Self Care: 24. Has difficulties dressing self [0-4]'
while ($SC24 -gt 4 -OR $SC24 -lt 0) {
$SC24 = Read-Host "value is out of range, please re-type the value"
}
[int]$SC25 = Read-Host -Prompt 'Self Care: 25. Has problems feeding self without assistance [0-4]'
while ($SC25 -gt 4 -OR $SC25 -lt 0) {
$SC25 = Read-Host "value is out of range, please re-type the value"
}
[int]$SC26 = Read-Host -Prompt 'Self Care: 26. Has problems bathing or showering self [0-4]'
while ($SC26 -gt 4 -OR $SC26 -lt 0) {
$SC26 = Read-Host "value is out of range, please re-type the value"
}
[int]$AB37 = Read-Host -Prompt 'Abnormal Behaviour: 37. Finds humour or laughs at things others do not find funny [0-4]'
while ($AB37 -gt 4 -OR $AB37 -lt 0) {
$AB37 = Read-Host "value is out of range, please re-type the value"
}
[int]$AB45 = Read-Host -Prompt 'Abnormal Behaviour: 45. Has temper outbursts [0-4]'
while ($AB45 -gt 4 -OR $AB45 -lt 0) {
$AB45 = Read-Host "value is out of range, please re-type the value"
}
[int]$AB47 = Read-Host -Prompt 'Abnormal Behaviour: 47. Is uncooperative when asked to do something [0-4]'
while ($AB47 -gt 4 -OR $AB47 -lt 0) {
$AB47 = Read-Host "value is out of range, please re-type the value"
}
[int]$AB49 = Read-Host -Prompt 'Abnormal Behaviour: 49. Shows socially embarassing behaviour [0-4]'
while ($AB49 -gt 4 -OR $AB49 -lt 0) {
$AB49 = Read-Host "value is out of range, please re-type the value"
}
[int]$AB50 = Read-Host -Prompt 'Abnormal Behaviour: 50. Makes tactless or suggestive remarks [0-4]'
while ($AB50 -gt 4 -OR $AB50 -lt 0) {
$AB50 = Read-Host "value is out of range, please re-type the value"
}
[int]$AB52 = Read-Host -Prompt 'Abnormal Behaviour: 52. Acts impulsively without thinking [0-4]'
while ($AB52 -gt 4 -OR $AB52 -lt 0) {
$AB52 = Read-Host "value is out of range, please re-type the value"
}
[int]$MO29 = Read-Host -Prompt 'Mood: 29. Cries [0-4]'
while ($MO29 -gt 4 -OR $MO29 -lt 0) {
$MO29 = Read-Host "value is out of range, please re-type the value"
}
[int]$MO30 = Read-Host -Prompt 'Mood: 30. Appears sad or depressed [0-4]'
while ($MO30 -gt 4 -OR $MO30 -lt 0) {
$MO29 = Read-Host "value is out of range, please re-type the value"
}
[int]$MO32 = Read-Host -Prompt 'Mood: 32. Is very restless or agitated [0-4]'
while ($MO32 -gt 4 -OR $MO32 -lt 0) {
$MO32 = Read-Host "value is out of range, please re-type the value"
}
[int]$MO33 = Read-Host -Prompt 'Mood: 33. Is very irritable [0-4]'
while ($MO33 -gt 4 -OR $MO33 -lt 0) {
$MO33 = Read-Host "value is out of range, please re-type the value"
}
[int]$B39 = Read-Host -Prompt 'Beliefs: 39. Sees things that are not really there (visual hallucinations) [0-4]'
while ($B39 -gt 4 -OR $B39 -lt 0) {
$B39 = Read-Host "value is out of range, please re-type the value"
}
[int]$B40 = Read-Host -Prompt 'Beliefs: 40. Hears voices that are not really there (auditory hallucinations) [0-4]'
while ($B40 -gt 4 -OR $B40 -lt 0) {
$B40 = Read-Host "value is out of range, please re-type the value"
}
[int]$B41 = Read-Host -Prompt 'Beliefs: 41. Has odd or bizarre ideas that cannot be true [0-4]'
while ($B41 -gt 4 -OR $B41 -lt 0) {
$B41 = Read-Host "value is out of range, please re-type the value"
}
[int]$E54 = Read-Host -Prompt 'Eating Habits: 54. Prefers sweet foods more than before [0-4]'
while ($E54 -gt 4 -OR $E54 -lt 0) {
$E54 = Read-Host "value is out of range, please re-type the value"
}
[int]$E55 = Read-Host -Prompt 'Eating Habits: 55. Wants to eat the same foods repeatedly [0-4]'
while ($E55 -gt 4 -OR $E55 -lt 0) {
$E55 = Read-Host "value is out of range, please re-type the value"
}
[int]$E56 = Read-Host -Prompt 'Eating Habits: 56. Her/his appetite is greater, s/he eats more than before [0-4]'
while ($E56 -gt 4 -OR $E56 -lt 0) {
$E56 = Read-Host "value is out of range, please re-type the value"
}
[int]$E57 = Read-Host -Prompt 'Eating Habits: 57. Table manners are declining e.g. stuffing food into mouth [0-4]'
while ($E57 -gt 4 -OR $E57 -lt 0) {
$E57 = Read-Host "value is out of range, please re-type the value"
}
[int]$S59 = Read-Host -Prompt 'Sleep: 59. Sleep is disturbed at night [0-4]'
while ($S59 -gt 4 -OR $S59 -lt 0) {
$S59 = Read-Host "value is out of range, please re-type the value"
}
[int]$S60 = Read-Host -Prompt 'Sleep: 60. Sleeps more by day than before (cat naps etc.) [0-4]'
while ($S60 -gt 4 -OR $S60 -lt 0) {
$S60 = Read-Host "value is out of range, please re-type the value"
}
[int]$SMB61 = Read-Host -Prompt 'Stereotypic and Motor Behaviours: 61. Is rigid in her/his ideas and opinions [0-4]'
while ($SMB61 -gt 4 -OR $SMB61 -lt 0) {
$SMB61 = Read-Host "value is out of range, please re-type the value"
}
[int]$SMB62 = Read-Host -Prompt 'Stereotypic and Motor Behaviours: 62. Develops routines from which s/he cannot easily be discouraged e.g. wanting to eat or go for walks at fixed times [0-4]'
while ($SMB62 -gt 4 -OR $SMB62 -lt 0) {
$SMB62 = Read-Host "value is out of range, please re-type the value"
}
[int]$SMB64 = Read-Host -Prompt 'Stereotypic and Motor Behaviours: 64. Clock watches or appears pre-occupied with time [0-4]'
while ($SMB64 -gt 4 -OR $SMB64 -lt 0) {
$SMB64 = Read-Host "value is out of range, please re-type the value"
}
[int]$SMB67 = Read-Host -Prompt 'Stereotypic and Motor Behaviours: 67. Repeatedly uses the same expression or catch phrase [0-4]'
while ($SMB67 -gt 4 -OR $SMB67 -lt 0) {
$SMB67 = Read-Host "value is out of range, please re-type the value"
}
[int]$MTV72 = Read-Host -Prompt 'Motivation: 72. Shows less enthusiasm for his/her usual interests [0-4]'
while ($MTV72 -gt 4 -OR $MTV72 -lt 0) {
$MTV72 = Read-Host "value is out of range, please re-type the value"
}
[int]$MTV73 = Read-Host -Prompt 'Motivation: 73. Shows little interest in doing new things [0-4]'
while ($MTV73 -gt 4 -OR $MTV73 -lt 0) {
$MTV73 = Read-Host "value is out of range, please re-type the value"
}
[int]$MTV76 = Read-Host -Prompt 'Motivation: 76. Fails to maintain motivation to keep in contact with friends and family [0-4]'
while ($MTV76 -gt 4 -OR $MTV76 -lt 0) {
$MTV76 = Read-Host "value is out of range, please re-type the value"
}
[int]$MTV78 = Read-Host -Prompt 'Motivation: 78. Appears indifferent to the worries and concerns of family member [0-4]'
while ($MTV78 -gt 4 -OR $MTV78 -lt 0) {
$MTV78 = Read-Host "value is out of range, please re-type the value"
}
[int]$MTV79 = Read-Host -Prompt 'Motivation: 79. Shows reduced affection [0-4]'
while ($MTV79 -gt 4 -OR $MTV79 -lt 0) {
$MTV79 = Read-Host "value is out of range, please re-type the value"
}
[int]$cbir =  [int]$M2 + [int]$M3 + [int]$M4 + [int]$M5 + [int]$M6 + [int]$O8 + [int]$O9 +  [int]$O12 + [int]$ADL14 + [int]$ADL16 + [int]$ADL17 + [int]$ADL18 + [int]$ADL20 + [int]$SC23 + [int]$SC24 + [int]$SC25 + [int]$SC26 + [int]$AB37 + [int]$AB45 + [int]$AB47 + [int]$AB50 + [int]$AB49 + [int]$AB52 + [int]$MO29 + [int]$MO30 + [int]$MO32 +  [int]$MO33 + [int]$B39 + [int]$B40 + [int]$B41 + [int]$E54 + [int]$E55 + [int]$E56 + [int]$E57 + [int]$S59 + [int]$S60 + [int]$SMB61 + [int]$SMB62 + [int]$SMB64 + [int]$SMB67 + [int]$MTV72 + [int]$MTV73 + [int]$MTV76 + [int]$MTV78 + [int]$MTV79
write-host "The total CBI-R score is" $cbir "/180"
[int]$memory=  [int]$M2 + [int]$M3 + [int]$M4 + [int]$M5 + [int]$M6
write-host "The Memory score is" $memory "/20"
[int]$orientation = [int]$O8 + [int]$O9 + [int]$O12
write-host "The Orientation and Attention score is" $orientation "/12"
[int]$adls = [int]$ADL14 + [int]$ADL16 + [int]$ADL17 + [int]$ADL18 + [int]$ADL20
write-host "The Activities of Daily Living score is" $adls "/20"
[int]$selfcare = [int]$SC23 + [int]$SC24 + [int]$SC25 + [int]$SC26
write-host "The Self Care score is" $selfcare "/16"
[int]$behaviour = [int]$AB37 + [int]$AB45 + [int]$AB47 + [int]$AB49 + [int]$AB50 + [int]$AB52
write-host "The Abnormal Behaviour score is" $behaviour "/24"
[int]$mood = [int]$MO29 + [int]$MO30 + [int]$MO32 + [int]$MO33
write-host "The Mood score is" $mood "/16"
[int]$belief = [int]$B39 + [int]$B40 + [int]$B41
write-host "The Beliefs score is" $belief "/12"
[int]$eating = [int]$E54 + [int]$E55 + [int]$E56 + [int]$E57
write-host "The Eating Habits score is" $eating "/16"
[int]$sleep = [int]$S59 + [int]$S60
write-host "The sleep score is" $sleep "/8"
[int]$motor = $SMB61 + $SMB62 +  $SMB64 + $SMB67
write-host "The Stereotypic and Motor Behaviours score is" $motor "/16"
[int]$motivation = $MTV72 + $MTV73 + $MTV76 + $MTV78 + $MTV79
write-host "The Motivation score is" $motivation "/20"
