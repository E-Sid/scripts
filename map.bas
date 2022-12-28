Print "This is Mean Arterial Blood Pressure Calculator"
Print "==============================================="
DIM x as Integer
DIM y as Integer
Print "Please, enter systolic blood pressure"
Input x
Print "Please, enter diastolic blood pressure"
Input y
Print "Mean Arterial Blood Pressure (MAP) is" ; y + ((1/3 * (x-y)))
