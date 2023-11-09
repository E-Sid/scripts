##/user/bin/awk -f

BEGIN {
    print "Rockwood Frailty Scale"
    print "======================"

    print"1, Very fit"
    print"2. Well symptoms"
    print"3. Managing well"
    print"4. Vulnerable"
    print"5. Mildly frail"
    print"6. Moderately frail"
    print"7. Severly frail"
    print"8. Very severely frail"
    print"9. Terminally ill"

    print" Please, enter score for Clinical Frailty Scale [0-9]"
        while ( CFS >= 0 || CFS <= 9) {
	    getline CFS
	    if (CFS < 0 || CFS > 9)
	print "The value entered is out of range, please type a valid number [0-9]"
	    else
		break
    }
	{
print "Rockwood Clinical Frailty Score is " CFS"/9"
	}
	exit;
}
