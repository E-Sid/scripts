write-host 'ECT Dose Calculator'
write-host '====================='
[int]$age = Read-Host -Prompt 'Please, type the age of the patient'
while ($age -gt 150 -OR $age -lt 6) {
$age = Read-host -Prompt 'value is out of range, please, enter another value'
}
[decimal]$PW = Read-Host -Prompt 'Please, type the pulse width in milliseconds'
while ($PW -gt 9 -OR $PW -lt 0) {
$PW = Read-Host "value is out of range, please re-type the value"
}
[int]$F = Read-Host -Prompt 'Please, type the frequency in Hertz'
while ($F -gt 140 -OR $F -lt 0) {
$F = Read-Host "value is out of range, please re-type the value"
}
[decimal]$D = Read-Host -Prompt 'Please, type the duration in seconds'
while ($D -gt 10 -OR $D -lt 0) {
$D = Read-Host "value is out of range, please re-type the value"
}
[decimal]$I = Read-Host -Prompt 'Please, type the current in amperes'
while ($I -gt 1.2 -OR $I -lt 0) {
$I = Read-Host "value is out of range, please re-type the value"
}
[int]$agebase = [int]$age * 5
[int]$halfagebase = [int]$age * 2.5
[decimal]$Q = [decimal]$PW * [int]$F * 2 * [decimal]$D * [decimal]$I
Write-Host 'According to age-based method that charge is' $agebase 'mC'
Write-Host 'According to half age-based method that charge is' $halfagebase 'mC'
Write-Host 'According to empirical tiration-based method that charge is' $Q 'mC'

