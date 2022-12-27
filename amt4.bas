DIM c as Integer
DIM a as Integer
DIM g as Integer
DIM e as Integer

Print "This is Abbreviated Mental Test-4 (AMT4) Calculator"
Print "===================================================="
Print "What is your age? If answer is correct give 1 else 0 [0-1]"
do
Input c
If c<0 then
    Print "value is out of range, please, enter correct value"
    elseif c>1 then Print "value is out of range, please, enter correct value"
    else
end If
loop while c>1 or c<0
Print "What is the year? If answer is correct give 1 else 0 [0-1]"
do
Input a
If a<0 then
    Print "value is out of range, please, enter correct value"
    elseif a>1 then Print "value is out of range, please, enter correct value"
    else
end If
loop while a>1 or a<0
Print "What is the name of this place? If answer is correct give 1 else 0 [0-1]?"
do
Input g
If g<0 then
    Print "value is out of range, please, enter correct value"
    elseif g>1 then Print "value is out of range, please, enter correct value"
    else
end If
loop while g>1 or g<0
Print "What is your date of birth (day & month)? If answer is correct give 1 else 0 [0-1]"
do
Input e
If g<0 then
    Print "value is out of range, please, enter correct value"
    elseif g>1 then Print "value is out of range, please, enter correct value"
    else
end If
loop while g>1 or g<0
print "AMT4 score is "; c + a + g + e
