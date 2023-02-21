#/usr/bin/awk -f

BEGIN {
    print "This is kilogram(s) (Kg) to pound(s) (lb) converter"
    print "=================================="
    printf("Please, type the weight in kilograms (Kg):  ")
    getline Kg
    while ( Kg < 0 ) {
	print "Value is out of range, please type a valid number"
	getline Kg
	if (Kg > 0 )
	    break
    }
    lb = Kg * 2.2046
    print "The weight is " lb " lb"
	exit;
}
