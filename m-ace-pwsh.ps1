write-host 'PowerShellCalculator for Addenbrooke's Cognitive Examination''
write-host '======================================================================'
[int]$A0 = Read-Host -Prompt 'Please, re-type score for orientation in time out of 4 to calculate M-ACE (day, date, month, year [0-4]'
while ($A0 -gt 4 -OR $A0 -lt 0) {
$A0 = Read-Host "value is out of range, please re-type the value"
}
[int]$F2 = Read-Host -Prompt 'Please, enter value for category fluency [0-7]'
while ($F2 -gt 7 -OR $F2 -lt 0) {
$F2 = Read-Host "value is out of range, please re-type the value"
}
[int]$M2 = Read-Host -Prompt 'Please, enter value for anterograde memory [0-7]'
while ($M2 -gt 7 -OR $M2 -lt 0) {
$M2 = Read-Host "value is out of range, please re-type the value"
}
[int]$V3 = Read-Host -Prompt 'Please, enter value for clock-drawing test [0-5]'
while ($V3 -gt 5 -OR $V3 -lt 0) {
$V3 = Read-Host "value is out of range, please re-type the value"
}
[int]$M4 = Read-Host -Prompt 'Please, enter value for recall of name and address [0-7]'
while ($M4 -gt 7 -OR $M4 -lt 0) {
$M4 = Read-Host "value is out of range, please re-type the value"
}
[int]$mace = [int]$A0 + [int]$F2 + [int]$M2 + [int]$V3 + [int]$M4
Write-Host 'The total score of M-ACE is' $mace '/30'

