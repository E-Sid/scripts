DIM c as Integer
DIM a as Integer
DIM g as Integer
DIM e as Integer

Print "Have you ever felt you needed to Cut down on your drinking? yes=1, no=0"
do
Input c
If c<0 then
    Print "value is out of range, please, enter correct value"
    elseif c>1 then Print "value is out of range, please, enter correct value"
    else
end If
loop while c>1 or c<0
Print "Have people Annoyed you by criticizing your drinking? yes=1, no=0"
do
Input a
If a<0 then
    Print "value is out of range, please, enter correct value"
    elseif a>1 then Print "value is out of range, please, enter correct value"
    else
end If
loop while a>1 or a<0
Print "Have you ever felt Guilty about drinking? yes=1, no=0"
do
Input g
If g<0 then
    Print "value is out of range, please, enter correct value"
    elseif g>1 then Print "value is out of range, please, enter correct value"
    else
end If
loop while g>1 or g<0
Print "Have you ever felt you needed a drink first thing in the morning (Eye-opener)? yes=1, no=0"
do
Input e
If g<0 then
    Print "value is out of range, please, enter correct value"
    elseif g>1 then Print "value is out of range, please, enter correct value"
    else
end If
loop while g>1 or g<0
print "CAGE score is "; c + a + g + e
