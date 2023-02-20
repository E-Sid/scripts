#/usr/bin/awk -f

BEGIN   {
    print "ECT Charge Calculator"
    print "====================="
    printf("Please, enter the pulse width in millisecond:  ")
    getline PW
    while ( PW < 0 || PW > 8.5 ) {
	print "out of range, please, retype the pulse width"
	getline PW
    if (PW > 0 && age < 8.5)
	break
    }
    printf("Please, enter the frequency in Hertz: ")
        getline F
    while ( F < 1 || F > 140 ) {
	print "out of range, please, retype the frequency: "
	getline F
    if ( F > 1 && F < 140)
	break
    }
    printf("Please, enter the duration in seconds: ")
    getline D
    while ( D < 0.1 || D > 12 ) {
	print "out of range, please, type the pulse width: "
	getline D
    if (D > 0.1 && P < 12)
	break
    }
    printf("Please, enter the current in Ampere: ")
    getline I
    while ( I < 0.1 || I > 1.5 ) {
	print "out of range, please, type the pulse width: "
	getline I
    if (I > 0 && I < 1.5)
	break
    }
    Q = PW * 2 * F * D * I
    { print "The equation is charge* duration eg. Q=PW*2F*D*I" }
    { print "The charge is " Q " mC" }
    printf("What is the electrode placement? [UL/BL]  ")
{IGNORECASE=1}
    while ( EP!="BL" || EP!="UL" )  {
        getline EP
    if (EP=="BL" || EP=="UL")
	break
    else print "Value is out of range. Please, type BL or UL"
    }
    printf("Is this the initial titration session? [Y/N]  ")
    while ( T!="Y"|| T!="N" )  {
        getline T 
        if (T=="Y" || T=="N")
	break
    else print "Value is out of range. Please, type Y or N"
    }
     if (T=="N")
     print "Cannot proceed for treatment sessions"
     else if  (Q < 168 && EP=="UL" && T=="Y")
     print "The suggested treatment dose for subsequent unilateral ECT administration is " Q * 2.5 " to " Q * 6 " mC "
     else if (Q > 168 && EP=="UL" && T=="Y")
     print "Charge is too high for standard titration"
     else if (Q < 403.2 && EP=="BL" &&  T=="Y")
     print "The suggested dose treatment for subsequent bilateral ECT administration is " Q * 1.5 " to " Q * 2.5 " mC"
     else if (Q > 403.2 && EP=="Bl" && T=="Y")
     print "Charge is too high for standard titration"
     exit;
}
