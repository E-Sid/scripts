#/usr/bin/awk -f

BEGIN {
    printf("Montreal Cognitive Assessment 5-minute Protocol   1. Attention: Please, enter score for immediate recall of 5 words [0-5]:  ")
	   getline A
	   while ( A < 0 || A > 5 ) {
	       print "Value is out of range, please, type a valid number"
	   getline A
	   if (A >= 0 && A <= 5)
	       break
	   }
    printf("2. Executive function: Please, enter score for verbal fluency (animals category (0.5 for each correct output [0-9]:  ")
	   getline E
	   while ( E < 0 || E > 9 ) {
	       print "Value is out of range, please, type a valid number"
	   getline E
	   if (E >= 0 && E <= 9)
	       break
	   }
	   printf("3. Orientation: Please, type score for 6-item date and geographic orientation [0-6]:  ")
	   getline O
	   while ( O < 0 || O > 6 ) {
	       print "Value is out of range, please, type a valid number"
	   getline E
	   if (O >= 0 && O <= 6)
	       break
	   }
	   printf ("4. Memory: Please, enter score for delayed recall of 5 learned words (2 points for each word recalled spontaneously, if not 1 point for each word recalled by cued recall or recognition but not spontaneously recalled [0-10]:  ")
	    getline M
	   while ( M < 0 || M > 10 ) {
	       print "Value is out of range. Please, type a valid number"
	    getline M
	    if (M >= 0 && M <= 10)
		break
	   }
	   { print "The total MoCA 5-min protocol is   " int(A) + E + int(O) + int(M)"/30"}
	       exit;
}	   

