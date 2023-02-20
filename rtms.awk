#/usr/bin/awk -f

BEGIN   {
    print "rTMS Dose Calculator"
    print "====================="
    printf(" Please, enter the resting motor threshold (rMT): ")
    getline MT
    while ( MT <= 0 ) {
	print "out of range, please, retype the rMT"
	getline MT
    if (MT > 0)
	break      
    }
    { print "The treatment intensity should be 120% of the rMT which is " MT * 1.2 }
	exit;
}
