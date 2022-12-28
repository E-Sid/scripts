Print "This is Mini-Cog Test"
Print "====================="
DIM x as Integer
DIM y as Integer
Print "Please, enter word recall result [0-3]"
do
Input x
If x<0 then
    Print "value is out of range, please, enter correct value"
    elseif x>3 then Print "value is out of range, please, enter correct value"
end If
loop while x>3 or x<0
Print "Please, enter clock drawing result [0 or 2] "
do
Input y
If y<0 then
    Print "value is out of range, please, enter correct value"
    elseif y>2 then Print "value is out of range, please, enter correct value"
    elseif y=1 then Print "value is out of range, please, enter correct value"
end If
loop while y>2 or y=1 or y<0
Print "The Mini-Cog Score is" ; x + y
