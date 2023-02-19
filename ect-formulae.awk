#/usr/bin/awk -f

BEGIN {
    print "ECT dosing formulae"
    printf("Please, enter the age of the patient:  ")
    getline age
    while ( age < 18 || age > 120 ) {
	print "out of range, please, type a valid age"
	getline age
    if (age > 18 && age < 120)
	break
    }
    printf("Please, enter the sex of the patient(M/F):  ") 
    while ( sex!="M" || sex!="m" || sex!="f" || sex!="F" )  {
        getline sex
    if (sex=="M" || sex=="m" || sex=="F" || sex=="f")
	break
    else print "Value is out of range. Please, type M or F"
    }	
    H = age * 2.5
    A = age * 5
    { print "According to the Half-Age based dosing method the charge is " H " mC" }
    { print "According to the Age-based dosing method the charge is "  A " mC" }
    if (age < 65)
	print "According to (Bennett et al. 2012) the charge is 200 mC"
    else if (age > 65)
	print "According to (Bennett et al. 2012) the charge is 250 mC"
    if (sex=="M" || sex=="m")
	print "According to (Schoyen et al. 2015) the Age-based dose is " A + 25 " to " A + 50" mC. The Half-age dose is " H + 25 " to " H + 50" mC"
    else if (sex=="F" || sex=="f")
	print "According to (Schoyen et al. 2015)  The Half-age dose is " H - 50 " to " H - 25" mC. The Age-based dose is " A - 50 " to " A - 25" mC."
    exit;
}
