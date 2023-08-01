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

print 'ECT Charge Calculator';
print '=====================';
printf (('Please, enter the pulse width in millisecond:  '));
$PW = <>;
while ($PW < 0 || $PW > 8.5) {
    print 'out of range, please, retype the pulse width';
    $PW = &readline();
    if ($PW > 0 && $PW < 8.5) {
	last;
    }
}
printf (('Please, enter the frequency in Hertz: '));
$F = &readline();
while ($F < 1 || $F > 140) {
    print 'out of range, please, retype the frequency: ';
    $F = &readline();
    if ($F > 1 && $F < 140) {
	last;
    }
}
printf (('Please, enter the duration in seconds: '));
$D = &readline();
while ($D < 0.1 || $D > 12) {
    print 'out of range, please, type the pulse width: ';
    $D = &readline();
    if ($D > 0.1 && $P < 12) {
	last;
    }
}
printf (('Please, enter the current in Ampere: '));
$I = &readline();
while ($I < 0.1 || $I > 1.5) {
    print 'out of range, please, type the pulse width: ';
    $I = &readline();
    if ($I > 0 && $I < 1.5) {
	last;
    }
}
$Q = $PW * 2 * $F * $D * $I;
{
    print 'The equation is charge* duration eg. Q=PW*2F*D*I';
}
{
    print 'The charge is ' . $Q . ' mC';
}
printf (('What is the electrode placement? [UL/BL]  '));
{
    $IGNORECASE = 1;
}
my $EP = <STDIN>;
chomp($EP);
while ($EP ne "UL" || $EP ne "BL") {
if ($EP eq "UL" || $EP eq "BL"){
    last;
}
else{
    print "Value is out of range\n";
    $EP = <STDIN>;
    chomp($EP);

 }
}

printf (('Is this the initial titration session? [Y/N]  '));
my $T = <STDIN>;
chomp($T);
while ($T ne "Y" || $T ne "N") {
    if ($T eq "Y" || $T eq "N"){
	last;
    }
    else {
	print 'Value is out of range. Please, type Y or N';
	$T = <STDIN>;
        chomp($T);
    }
}
if ($T eq 'N') {
    print 'Cannot proceed for treatment sessions';
}
elsif ($Q < 168 && $EP eq 'UL' && $T eq 'Y') {
    print

      'The suggested treatment dose for subsequent unilateral ECT administration is '

    .  $Q * 2.5 . ' to ' . $Q * 6 . ' mC ';
}
elsif ($Q > 168 && $EP eq 'UL' && $T eq 'Y') {
    print 'Charge is too high for standard titration';
}
elsif ($Q < 403.2 && $EP eq 'BL' && $T eq 'Y') {
    print

      'The suggested dose treatment for subsequent bilateral ECT administration is '

     . $Q * 1.5 . ' to ' . $Q * 2.5 . ' mC';
}
elsif ($Q > 403.2 && $EP eq 'Bl' && $T eq 'Y') {
    print 'Charge is too high for standard titration';

last;
}
sub readline {
    if ($getline_ok = (($_ = <>) ne '')) {
	;
    }
    $_;
}
