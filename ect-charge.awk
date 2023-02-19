#/usr/bin/awk -f

BEGIN {
    print "ECT Charge Calculator"
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
    { print "The equation is Q=PW*2F*D*I" }
    { print "The charge is " Q " mC" }
    printf("What is the electrode placement? [UL/BL]  ")
    while ( EP!="BL" || EP!="bl" || EP!="UL" || EP!="UL" )  {
        getline EP
    if (EP=="BL" || EP=="bl" || EP=="UL" || EP=="ul")
	break
    else print "Value is out of range. Please, type BL or UL"
    }
    printf("Is this the titration session? [Y/N]  ")
	while ( T!="Y" || T!="y" || T!="N" || T!="N" )  {
        getline T 
        if (T=="Y" || T=="y" || T=="N" || T=="n")
	break
    else print "Value is out of range. Please, type Y or N"
    }
     if (T=="N" || T=="n")
     print "Cannot proceed for treatment sessions"	
     if (EP=="UL" && Q < 168 && T=="Y" || T=="y")
     print "The suggested treatment dose for unilateral ECT is " Q * 2.5 " to " Q * 6 " mC "
     if (EP=="UL" && Q > 168 &&  T=="Y" || T=="y")
     print "Charge is too high for standard titration"
     if (EP=="BL" && Q < 403.2 && T=="Y" || T=="y")
     print "The suggested dose treatment for bilateral ECT is " Q * 1.5 " to " Q * 2.5 " mC"
     if (EP=="BL" && Q > 403.2 && T=="Y" || T=="y")
     print "Charge is too high for standard titration"
     exit;
}
