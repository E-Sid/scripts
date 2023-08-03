#!/usr/bin/perl
eval 'exec /usr/bin/perl -S $0 ${1+"$@"}'
    if $running_under_some_shell;
			# this emulates #! processing on NIH machines.
			# (remove #! line above if indigestible)

eval '$'.$1.'$2;' while $ARGV[0] =~ /^([A-Za-z_0-9]+=)(.*)/ && shift;
			# process any FOO=bar switches

#/usr/bin/awk -f

$, = ' ';		# set output field separator
$\ = "\n";		# set output record separator

print 'This is QTc interval calculator with multiple formulae';
print '======================================================';
printf (('Please, enter the heart rate [bpm]:  '));
$H = <>;
while ($H <= 0) {
    print 'Value is out of range, please, type a valid number';
    $H = <>;
    if ($H > 0) {
	last;
    }
}
printf (('Please, enter the QT interval:  '));
$QT = <>;
while ($QT <= 0) {
    print 'Value is out of range, please, type a valid number';
    $QT = <>;
    if ($QT > 0) {
	last;
    }
}
$z = 60 / $H;
$s = sqrt($z);
$f = $z ** (1/3);
$d = $z ** (0.413);
$A = 1 - $z;
$Baz = $QT / $s;
$Fried = $QT / $f;
$gham = 105 - $z;
$rju = 120 + $H;
$Min = $H - 60;
$O = 0.00175 * $Min;
$P = 1.75 * $Min;
$G = 1.54 * $A;
$x = 1 / $z - 1;
$w = 105 * $x;
$Hodges = $QT + $P;
$H2 = $QT + $w;
$WH = $QT + $O;
$Framing = $QT + $G;
$Raut = $QT * $rju / 180;
$Dmit = $QT / $d;
print 'According to Bazett formula QTc = QT / sqrt(RR) = ' .  $Baz;
print 'According to Friedricia formula QTc = QT / RR^(1/3) ' . $Fried;
print 'According to Hodges formula  QTc = QT + 1.75(HR - 60) = ' . $Hodges;
print 'According to Hodges formula QTc = QT + 0.00175(HR - 60) = ' . $WH;
print 'According to Hodges formula QTc = QT + 105(1/RR-1) = ' . $H2;
print 'According to Framingham formula QTc = QT + 0.154(RR) = ' . $Framing;
print 'According to Rautaharju formula QTc = QT * (120 + HR)/180 =  ' . $Raut;
print 'According to Dmitrienko formula QTc = QT / RR^0.413 = ' . $Dmit;

sub readline {
    if ($getline_ok = (($_ = <>) ne '')) {
	;
    }
    $_;
}
