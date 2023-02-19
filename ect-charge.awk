#/usr/bin/awk -f

BEGIN {
    printf{"ECT Charge Calculator   ")
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
    printf ("Please, enter the duration in seconds: ")
    getline D
    while ( D < 0.1 || D > 12 ) {
	print "out of range, please, type the pulse width: "
	getline D
    if (D > 0.1 && P < 12)
	break
    }
    printf ("Please, enter the current in Ampere: ")
    getline I
    while ( I < 0.1 || I > 1.5 ) {
	print "out of range, please, type the pulse width: "
	getline I
    if (I > 0 && I < 1.5)
	break
    }
    { print "The equation is Q=PW*2F*D*I" }
    { print "The charge is " (PW * 2 * F * D * I)" mC" }
    exit;
}
