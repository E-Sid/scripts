#/usr/bin/awk -f

BEGIN   {
    print "Cardiac Output Calculator"
    print "========================="
    printf("Please, enter the stroke volume [mL/min]:  ")
    getline SV
    while ( SV <= 0 ) {
	print "out of range, please, retype the stroke volume: "
	getline SV
    if (SV > 0)
	break
    }
   printf("Please, enter the Heart Rate [bpm]:  ")
    getline HR
    while ( HR <= 0 ) {
	print "out of range, please, retype the stroke volume: "
	getline HR
    if (HR > 0)
	break
    }
CO = SV * HR
Q = CO/1000
print "The cardiac output formula is CO = SV * HR"
print "The cardiac output is " Q " L/min"
print "The cardiac output is " CO " mL/min"
     exit;
}
