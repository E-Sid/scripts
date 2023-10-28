#/usr/bin/awk -f

BEGIN {
    printf("Maximum Heart Rate Calculator")
    print "Please, enter age in years: "
    getline age
    while (age < 0 || age > 160 ) {
	print "The value entered is out of range. please, retype the age: "
	getline age
	if (age > 0 && age < 160)
	    break
    }
    { print "The Maximum Heart rate is " 220 - age " bpm" }
    { print "The 64% level would be " 0.64 * age  " bpm" }
    { print "The 76% kevek would be " 0.76 * age " bpm" }
	    exit;	
}
