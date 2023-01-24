write-host 'PowerShellCalculator for Addenbrooke's Cognitive Examination''
write-host '======================================================================'
[int]$A1 = Read-Host -Prompt 'Please, enter value for orientation in time [0-5]'
while ($A1 -gt 5 -OR $A1 -lt 0) {
$A1 = Read-Host "value is out of range, please re-type the value"
}
[int]$A0 = Read-Host -Prompt 'Please, re-type score for orientation in time out of 4 to calculate M-ACE (day, date, month, year [0-4]'
while ($A0 -gt 4 -OR $A0 -lt 0 -OR $A0 gt $A1) {
$A0 = Read-Host "value is out of range, please re-type the value"
}
[int]$A2 = Read-Host -Prompt 'Please, enter value for orientation in place [0-5]'
while ($A2 -gt 5 -OR $A2 -lt 0) {
$A2 = Read-Host "value is out of range, please re-type the value"
}
[int]$A3 = Read-Host -Prompt 'Please, enter value for registration [0-3]'
while ($A3 -gt 3 -OR $A3 -lt 0) {
$A3 = Read-Host "value is out of range, please re-type the value"
}
[int]$A4 = Read-Host -Prompt 'Please, enter value for serial 7 subtraction [0-5]'
while ($A4 -gt 5 -OR $A4 -lt 0) {
$A4 = Read-Host "value is out of range, please re-type the value"
}
[int]$M1 = Read-Host -Prompt 'Please, enter value for recall of 3 item [0-3]'
while ($M1 -gt 3 -OR $M1 -lt 0) {
$M1 = Read-Host "value is out of range, please re-type the value"
}
[int]$F1 = Read-Host -Prpmpt 'Please, enter value for letter fluency [0-7]'
while ($F1 -gt 7 -OR $F1 -lt 0) {
$F1 = Read-Host "value is out of range, please re-type the value"
}
[int]$F2 = Read-Host -Prompt 'Please, enter value for category fluency [0-7]'
while ($F2 -gt 7 -OR $F2 -lt 0) {
$F2 = Read-Host "value is out of range, please re-type the value"
}
[int]$M2 = Read-Host -Prompt 'Please, enter value for anterograde memory [0-7]'
while ($M2 -gt 7 -OR $M2 -lt 0) {
$M2 = Read-Host "value is out of range, please re-type the value"
}
[int]$M3 = Read-Host -Prompt 'Please, enter value for retrograde memory [0-4]'
while ($M3 -gt 4 -OR $M3 -lt 0) {
$M3 = Read-Host "value is out of range, please re-type the value"
}
[int]$L1 = Read-Host -Prompt 'Please, enter value for comprehension [0-3]'
while ($L1 -gt 3 -OR $L1 -lt 0) {
$L1 = Read-Host "value is out of range, please re-type the value"
}
[int]$L2 = Read-Host -Prompt 'Please, enter value for writing [0-2]'
while ($L2 -gt 2 -OR $L2 -lt 0) {
$L2 = Read-Host "value is out of range, please re-type the value"
}
[int]$L3 = Read-Host -Prompt 'Please, enter value for single word repetition [0-2]'
while ($L3 -gt 2 -OR $L3 -lt 0) {
$L3 = Read-Host "value is out of range, please re-type the value"
}
[int]$L4 = Read-Host -Prompt 'Please, enter value for proverb repetition [0-2]'
while ($L4 -gt 2 -OR $L4 -lt 0) {
$L4 = Read-Host "value is out of range, please re-type the value"
}
[int]$L5 = Read-Host -Prompt 'Please, enter value for object naming [0-12]'
while ($L5 -gt 12 -OR $L5 -lt 0) {
$L5 = Read-Host "value is out of range, please re-type the value"
}
[int]$L6 = Read-Host -Prompt 'Please, enter value for comprehension [0-4]'
while ($L6 -gt 4 -OR $L6 -lt 0) {
$L6 = Read-Host "value is out of range, please re-type the value"
}
[int]$L7 = Read-Host -Prompt 'Please, enter value for reading [0-1]'
while ($L7 -gt 1 -OR $L7 -lt 0) {
$L7 = Read-Host "value is out of range, please re-type the value"
}
[int]$V1 = Read-Host -Prompt 'Please, enter value for intersecting infinity loops [0-1]'
while ($V1 -gt 1 -OR $V1 -lt 0) {
$V1 = Read-Host "value is out of range, please re-type the value"
}
[int]$V2 = Read-Host -Prompt 'Please, enter value for 3D wire cube [0-2]'
while ($V2 -gt 2 -OR $V2 -lt 0) {
$V2 = Read-Host "value is out of range, please re-type the value"
}
[int]$V3 = Read-Host -Prompt 'Please, enter value for clock-drawing test [0-5]'
while ($V3 -gt 5 -OR $V3 -lt 0) {
$V3 = Read-Host "value is out of range, please re-type the value"
}
[int]$V4 = Read-Host -Prompt 'Please, enter value for counting dots [0-4]'
while ($V4 -gt 4 -OR $V4 -lt 0) {
$v4 = Read-Host "value is out of range, please re-type the value"
}
[int]$V5 = Read-Host -Prompt 'Please, enter value for identifying letters [0-4]'
while ($V5 -gt 4 -OR $V5 -lt 0) {
$V5 = Read-Host "value is out of range, please re-type the value"
}
[int]$M4 = Read-Host -Prompt 'Please, enter value for recall of name and address [0-7]'
while ($M4 -gt 7 -OR $M4 -lt 0 -OR $M4 -gt $M2) {
$M4 = Read-Host "value is out of range, please re-type the value"
}
[int]$M5 = Read-Host -Prompt 'Please, enter value for recognition [0-5]' 
while ($M5 -gt 5 -OR $M5 -lt 0) {
$M5 = Read-Host "value is out of range, please re-type the value"
}
[int]$sum = [int]$A1 + [int]$A2 + [int]$A3 + [int]$A4 + [int]$M1 + [int]$F1 + [int]$F2 + [int]$M2 + [int]$M3 + [int]$L1 + [int]$L2 + [int]$L3 + [int]$L4 + [int]$L5 + [int]$L6 + [int]$L7 + [int]$V1 + [int]$V2 + [int]$V3 + [int]$V4 + [int]$V5 + [int]$M4 + [int]$M5
Write-Host 'The total score of ACE-III is'$sum '/100'
[int]$mace = [int]$A0 + [int]$F2 + [int]$M2 + [int]$V3 + [int]$M4
Write-Host 'The total score of M-ACE is' $mace '/30'
[int]$sumA = [int]$A1 + [int]$A2 + [int]$A3 + [int]$A4
Write-host 'Attention:' $sumA '/18'
[int]$sumM = [int]$M1 + [int]$M2 + [int]$M3 + [int]$M4 + [int]$M5
write-host 'Memory:' $sumM '/26'
[int]$SumF = [int]$F1 + [int]$F2
Write-Host 'Fluency' $sumF '/14' 
[int]$sumL = [int]$L1 + [int]$L2 + [int]$L3 + [int]$L4 + [int]$L5 + [int]$L6 + [int]$L7
Write-Host 'Language:' $sumL '/26'
[int]$sumV = [int]$V1 + [int]$V2 + [int]$V3 + [int]$V4 + [int]$V5
Write-Host 'Visuospatial:' $sumV '/16'
