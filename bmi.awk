#/usr/bin/awk -f

BEGIN {
    printf("BMI Calculator    ")
    print ""
    print "Please, enter weight in kilograms:  "
    getline W
     while ( W < 0 || W > 800 ) {
	print "out of range, please, retype the weight"
	getline W
    if (PW > 0 && age < 800)
	break
    }
    print "Please, enter height in metres: "
    getline H
     while ( H < 0 || H > 6 ) {
	print "out of range, please, retype the height in metres"
	getline H
    if (H > 0 && H < 6)
	break
    }
     { print "The BMI is  " W/H^2 }
     exit;
}
