#/usr/bin/awk -f
BEGIN   {
    print "This is MoCA Memory Index Score Calculator"
    print "=========================================="
    print "Please, enter the score for delayed free recall"
    getline F
    while ( F < 0 || F > 5 ) {
    	if ( F >= 0 && F <= 5 )
	    break
	else print "The value is out of range, pleae, enter a valid number"
	getline F
    }
	if (F == 5)
	{ print "The MIS score is 15/15" 
	exit 1 }
    else if (F >= 0 && F <= 4 )
	 
    print "Please, enter the score for category recall"
    getline C
	while  ( C < 0 || C > 5 - F ) {
    	if ( C >= 0 && C <= 5 - F )
	    break
	else print "The value is out of range, pleae, enter a valid number"
	getline C
    }
	if (C == 5)
	{ print "The MIS score is 10/15" 
	exit 2 }
	if (F + C == 5)
	{ print "The MIS score is " int(F) * 3 + int(C) * 2 "/15"
	    exit 3 }
    else if (C >= 0 && C <= 4 )
	R = F + C
    print "Please, enter the score for cue recall"
    getline Q
	while  ( Q < 0 || Q > 5 || Q > 5 - R ) {
    	if ( Q >= 0 && Q <= 5 - R )
	    break
	else print "The value is out of range, pleae, enter a valid number"
	getline Q
    }
	if (Q == 5)
	{ print "The MIS score is 5/15" 
	exit 4 }
	if (F + C + Q == 5)
	{ print "The MIS score is " int(F) * 3 + int(C) * 2 + int(Q) "/15"
	    exit 3 }
    else if (Q >= 0 && Q <= 5 - R )	
	print "MIS score is " int(F) * 3 + int(C) * 2 + int(Q) "/15"

	exit;
}	

