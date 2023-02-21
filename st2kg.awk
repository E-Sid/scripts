#/usr/bin/awk -f

BEGIN {
    print "This is stone(s) (st) to kilogram(s) (kg) converter"
    print "=================================="
    printf("Please, type the weight in stones (st):  ")
    getline st
    while ( st < 0 ) {
	print "Value is out of range, please type a valid number"
	getline Kg
	if (st > 0 )
	    break
    }
    kg = st / 0.15747
    print "The weight is " kg " kg"
	exit;
}
