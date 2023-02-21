#/usr/bin/awk -f

BEGIN {
    print "This is kilogram(s) (kg) to stone(s) (st) converter"
    print "=================================="
    printf("Please, type the weight in kilograms (kg):  ")
    getline kg
    while ( kg < 0 ) {
	print "Value is out of range, please type a valid number"
	getline Kg
	if (kg > 0 )
	    break
    }
    st = kg * 0.15747
    print "The weight is " st " st"
	exit;
}
