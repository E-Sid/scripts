[decimal]$W = Read-Host -Prompt 'Please, enter weight in Kilograms'
[decimal]$H = Read-Host -Prompt 'Please, enter height in meters'
[decimal]$BMI = $W/($H*$H)
write-host 'The BMI is' $BMI
