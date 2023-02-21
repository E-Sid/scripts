#/usr/bin/awk -f

BEGIN {
    print "This is hip-waist ratio calculator"
    print "=================================="
    print "Note: the unit of measurement has to be consistent between both either cm for both waist and hip or inches"
    printf("Please, type the measurement for waist:  ")
    getline W
    while ( W < 0 ) {
	print "Value is out of range, please type a valid number"
	getline W
	if (W > 0 )
	    break
    }
    printf("Please, type the measurement for hip:  ")
    getline H
    while ( H < 0 ) {
	print "Value is out of range, please type a valid number"
	getline H
	if (W > 0 )
	    break
    }
    R = W/H
    print "The hip-waist ratio is " R
    exit;
}
