Print "This is Mean Arterial Blood Pressure Calculator"
Print "==============================================="
DIM x as Integer
DIM y as Integer
Print "Please, enter systolic blood pressure"
Input x
Print "Please, enter diastolic blood pressure"
do
Input y
  If y>x then
    Print "value is out of range, please, enter correct value"
    end If
loop while y>x
Print "Mean Arterial Blood Pressure (MAP) is" ; y + ((1/3 * (x-y)))
