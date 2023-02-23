#/!/bin/user/awk -f

BEGIN {
    print "This is AVPU score and conversion to GCS score"
    print "=============================================="
{IGNORECASE=1}
     print "Is the patient Alert? [Y/N]"
     while ( A != "Y" || A != "N" ) {
    getline A
    if (A=="Y" || A=="N")
	 break
	 else "Response is out of range, please answer Y for yes, and N for no"
	 }
	 if (A=="Y") {
	     print "The AVPU score is A (ALERT) the GCS score is 15/15"
	     exit 1 }
	 else if (A=="N")
	     print "Is the patient verbally responsive? [Y/N]"
          while ( V != "Y" || V != "N" ) {
    getline V
    if (V=="Y" || V=="N")
	 break
	 else "Response is out of range, please answer Y for yes, and N for no"
	 }
	  if (V=="Y") {
	     print "The AVPU score is V (VERBAL) the GCS score is 13/15"
	     exit 2}
	     else if (V=="N")
	print "Is the patient responsive to painful stimuli? [Y/N]"
	       while ( P != "Y" || P != "N" ) {
    getline P
    if (P=="Y" || P=="N")
	 break
	 else "Response is out of range, please answer Y for yes, and N for no"
	 }
	       if (P=="Y") {
	     print "The AVPU score is P (Pain) the GCS score is 8/15"
	     exit 3 }
	 else if (P=="N")
	     print "The patient is possibly unresponsive."
		   print "AVPU score is U (Unresponsive) the GCS is 3/15"
	    
	     exit;
}
