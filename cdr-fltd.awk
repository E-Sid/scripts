#/usr/bin/awk -f

BEGIN {
    print"Clinical Dementia Rating + Frontotemporal Lobar Degeneration (CDR-FTLD) Scale"
    print "============================================================================="
    printf("1. Please, type the score for memory: ") 
    while ( M != 0 || M != 0.5 || M != 1 || M != 2 || M != 3 ) { 
	getline M
	if (M != 0 && M != 0.5 && M != 1 && M != 2 && M != 3)
	    print "out of range"
	else 
	break
    }
    printf("2. Please, type the score for orientation: ")
    while ( O != 0 || O != 0.5 || O != 1 || O != 2 || O != 3 ) { 
	getline O
	if (O != 0 && O != 0.5 && O != 1 && O != 2 && O != 3)
	    print "out of range"
	else 
	break
    }
    printf("3. Please, type the score for judgement: ")
    while ( J != 0 || J != 0.5 || J != 1 || J != 2 || J != 3 ) { 
	getline J
	if (J != 0 && J != 0.5 && J != 1 && J != 2 && J != 3)
	    print "out of range"
	else 
	break
    }
    printf("4. Please, type the score for community affairs: ")
    while ( C != 0 || C != 0.5 || C != 1 || C != 2 || C != 3 ) { 
	getline C
	if (C != 0 && C != 0.5 && C != 1 && C != 2 && C != 3)
	    print "out of range"
	else 
	break
    }
    printf("5. Please, type the score for hobbies: ")
    while ( H != 0 || H != 0.5 || H != 1 || H != 2 || H != 3 ) { 
	getline H
	if (H != 0 && H != 0.5 && H != 1 && H != 2 && H != 3)
	    print "out of range"
	else 
	break
    }
    printf("6. Please, type the score for personal care: ")
    while ( P != 0 || P != 1 || P != 2 || P != 3 ) { 
	getline P
	if (P != 0 && P != 1 && P != 2 && P != 3)
	    print "out of range"
	else 
	break
    }
    printf("7. Please, type the score for behaviour, comportment, and personality: ")
    while ( B != 0 || B != 0.5 || B != 1 || B != 2 || B != 3 ) { 
	getline B
	if (B != 0 && B != 0.5 && B != 1 && B != 2 && B != 3)
	    print "out of range"
	else 
	break
    }
    printf("8. Please, type the score for language: ")
        while ( L != 0 || L != 0.5 || L != 1 || L != 2 || L != 3 ) { 
	getline L
	if (L != 0 && L != 0.5 && L != 1 && L != 2 && L != 3)
	    print "out of range"
	else 
	break
    }
	{ print "The total CDR-FTLD score is  " M + O + J + C + H + P + B + L "/24 via SOB method" }
	exit;
    }
