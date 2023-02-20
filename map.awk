#/!/bin/usr/awk -f

BEGIN {
    print "This is Mean Arterial Blood Pressure Calculator"
    print "==============================================="
    print "Please, enter systolic blood pressure"
    getline sp
    while (sp < dp || sp <= 0 ) {
	print "systolic blood pressure must be higher than diastolic"
    getline sp
	if (sp > dp && sp > 0)
	    break
    }
    print "Please, enter diastolic blood pressure"
    getline dp
    while (dp > sp || dp <= 0 ) {
	print "diastolic blood pressure must be lower than systolic"
        getline dp
	if (sp > dp && sp > 0)
	    break
    }
    pp = sp - dp
    MAP = dp + (1/3 * pp)
    print "The Mean Arterial Blood Pressure is " MAP " mmHg"
    exit;
}
       
