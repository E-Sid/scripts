#/usr/bin/awk -f

BEGIN {
    printf("Please, enter the age of the patient:  ")
    getline age
    { print "According to the Half-Age based dosing method the charge is " (age * 2.5)" mC" }
    { print "According to the Age-based dosing method the charge is " (age * 5)" mC" }
}
