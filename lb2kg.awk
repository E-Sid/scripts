#/usr/bin/awk -f

BEGIN {
    print "This is pound(s) (lb) to kilgoram(s) (Kg) converter"
    print "=================================="
    printf("Please, type the weight in pounds (lb):  ")
    getline lb
    while ( lb < 0 ) {
	print "Value is out of range, please type a valid number"
	getline kg
	if (lb > 0 )
	    break
    }
    kg =  lb  / 2.2046
    print "The weight is " kg " kg"
	exit;
}
