#/usr/bin/awk -f

BEGIN {
    printf("Clinical Dementia Rating (CDR) Scale    ")
    printf("1. Please, type the score for memory: ")
    getline M
    while ( M < 0 || M > 3 ) {
	print "Value is out of range, please type a valid number"
	getline M
	if (M >= 0 && M <= 3 )
	    break
    }
    printf("2. Please, type the score for orientation: ")
    getline O
    while ( O < 0 || O > 3 ) {
	print "Value is out of range, please type a valid number"
	getline O
	if (O >= 0 && O <= 3 )
	    break
    }
    printf("3. Please, type the score for judgement: ")
    getline J
    while ( J < 0 || J > 3 ) {
	print "Value is out of range, please type a valid number"
	getline J
	if (J >= 0 && J <= 3 )
	    break
    }
    printf("4. Please, type the score for community affairs: ")
    getline C
    while ( C < 0 || C > 3 ) {
	print "Value is out of range, please type a valid number"
	getline C
	if (C >= 0 && C <= 3 )
	    break
    }
    printf("5. Please, type the score for hobbies: ")
    getline H
    while ( H < 0 || H > 3 ) {
	print "Value is out of range, please type a valid number"
	getline H
	if (H >= 0 && H <= 3 )
	    break
    }
    printf("6. Please, type the score for personal care: ")
    getline P
    while (  P < 0 || P > 3 ) {
	print "Value is out of range, please type a valid number"
	getline P
	if (P >= 0 && P <= 3 )
	    break
    }
    { print "The total CDR score is  " M + O + J + C + H + int(P) "/18 via SOB method" }
	exit;
}
