#/!/bin/pwsh

write-host 'Clinical Dementia Rating + Frontotemporal Lobar Degeneration (CDR-FTLD)'
write-host '========================================================================'
[decimal]$M = Read-Host -Prompt '1. Please, type score for Memory'
while ($M -gt 3 -OR $M -lt 0) {
$M = Read-Host "Value is out of range, please, re-type the value"
}
[decimal]$O = Read-Host -Prompt '2. Please, type score for orientation'
while ($O -gt 3 -OR $O -lt 0) {
$O = Read-Host "Value is out of range, please, re-type the value"
}
[decimal]$J = Read-Host -Prompt '3. Please, type score for orientation'
while ($J -gt 3 -OR $J -lt 0) {
$O = Read-Host "Value is out of range, please, re-type the value"
}
[decimal]$C = Read-Host -Prompt '4. Please, type score for Community Affairs'
while ($C -gt 3 -OR $C -lt 0) {
$O = Read-Host "Value is out of range, please, re-type the value"
}
[decimal]$H = Read-Host -Prompt '5. Please, type score for Home and Hobbies'
while ($H -gt 3 -OR $H -lt 0) {
$O = Read-Host "Value is out of range, please, re-type the value"
}
[intl]$P = Read-Host -Prompt '6. Please, type score for Personal Care'
while ($P -gt 3 -OR $P -lt 0) {
$O = Read-Host "Value is out of range, please, re-type the value"
}
[decimal]$B = Read-Host -Prompt '7. Please, type score for Behaviour, Comportment and Personality'
while ($B -gt 3 -OR $B -lt 0) {
$O = Read-Host "Value is out of range, please, re-type the value"
}
[decimal]$L = Read-Host -Prompt '8. Please, type score for Language'
while ($O -gt 3 -OR $O -lt 0) {
$L = Read-Host "Value is out of range, please, re-type the value"
}
[decimal]$CDR = [decimal]$M + [decimal]$O + [decimal]$J + [decimal]$C + [decimal]$H + [int]$P + [decimal]$B + [decimal]$L
write-host 'The total CDR-FTLD score is' $CDR '/24 via SOB method'
