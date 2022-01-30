write-host 'PowerShell Calculator for Montreal Cognitive Assessment Blind'
write-host '======================================================='
[int]$A1 = Read-Host -Prompt 'Attention: Please, enter score for digit span [0-2]'
while ($A1 -gt 2 -OR $A1 -lt 0) {
$A1 = Read-Host "Value is out of range. Please, enter a valid number"
}
[int]$A2 = Read-Host -Prompt 'Attention: Please, type score for vigilance [0-1]'
while ($A2 -gt 1 -OR $A2 -lt 0) {
$A2 = Read-Host "Value is out of range. Please, enter a valid number"
}
[int]$A3 = Read-Host -Prompt 'Attention: Please, enter score for serial 7s substraction [0-3]'
while ($A3 -gt 3 -OR $A3 -lt 0) {
$A3 = Read-Host "Value is out of range. Please, enter a valid number"
}
[int]$L1 = Read-Host -Prompt 'Language: Please, enter score for sentence repetition [0-2]'
while ($L1 -gt 2 -OR $L1 -lt 0) {
$L1 = Read-Host "Value is out of range. Please, enter a valid number"
}
[int]$L2 = Read-Host -Prompt 'Language: Please, enter score for verbal fluency [0-1]'
while ($L2 -gt 1 -OR $L2 -lt 0) {
$L2 = Read-Host "Value is out of range. Please, enter a valid number"
}
[int]$A4 = Read-Host -Prompt 'Abstraction: Please, enter score for abstraction [0-2]'
while ($A4 -gt 2 -OR $A4 -lt 0) {
$A4 = Read-Host "Value is out of range. Please, enter a valid number"
}
[int]$DR = Read-Host -Prompt 'Delayed Reacll: Please, enter score for delayed recall [0-5]'
while ($DR -gt 5 -OR $DR -lt 0) {
$DR = Read-Host "Value is out of range. Please, enter a valid number"
}
[int]$O = Read-Host -Prompt 'Orientation: Please, enter score for orientation [0-6]'
while ($O -gt 6 -OR $O -lt 0) {
$O = Read-Host "Value is out of range. Please, enter a valid number"
}
[int]$moca =  [int]$A1 + [int]$A2 + [int]$A3 + [int]$L1 + [int]$L2 + [int]$A4 + [int]$DR + [int]$O
Write-Host 'The total MoCA Blind score is' $moca '/22'


