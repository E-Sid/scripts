#/usr/bin/awk -f

BEGIN {
    print "This is QTc interval calculator with multiple formulae"
    print "======================================================"
    printf("Please, enter the heart rate [bpm]:  ")
	   getline H
	   while ( H <= 0) {
	       print "Value is out of range, please, type a valid number"
	       getline H
	       if (H > 0)
		   break
     }
	   printf("Please, enter the QT interval:  ")
	   getline QT
	   while ( QT <= 0) {
	       print "Value is out of range, please, type a valid number"
	       getline QT
	       if (QT > 0)
		   break
     }
	    z = 60 / H
	    s = sqrt (z)
	    f = z ** (1/3)
	    d = z ** (0.413)
            A = 1 - z
	    Baz = QT / s
	    Fried = QT / f
            gham = 105 - z
            rju = 120 + H
	    Min = H - 60
            O = 0.00175 * Min
            P = 1.75 * Min
	    G = 1.54 * A
	    x = 1 / z - 1
	    w = 105 * x
	    Hodges = QT + P
	    H2 = QT + w
	    WH = QT + O
	    Framing = QT + G
	    Raut = QT * rju / 180
	    Dmit = QT / d
      print "According to Bazett formula QTc = QT / sqrt(RR) = " Baz 
      print "According to Friedricia formula QTc = QT / RR^(1/3) " Fried 
      print "According to Hodges formula  QTc = QT + 1.75(HR - 60) = " Hodges 
      print "According to Hodges formula QTc = QT + 0.00175(HR - 60) = " WH
      print "According to Hodges formula QTc = QT + 105(1/RR-1) = " H2
      print "According to Framingham formula QTc = QT + 0.154(RR) = " Framing 
      print "According to Rautaharju formula QTc = QT * (120 + HR)/180 =  " Raut
      print "According to Dmitrienko formula QTc = QT / RR^0.413 = " Dmit
	    exit;
	    }
      
	    

	   
