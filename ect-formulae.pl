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

print 'ECT dosing formulae';
printf (('Please, enter the age of the patient:  '));
$age = <>;
while ($age < 18 || $age > 120) {
    print 'out of range, please, type a valid age';
    $age = <>;
    if ($age > 18 && $age < 120) {
	last;
    }
}
printf (('Please, enter the sex of the patient(M/F):  '));
while ($sex ne 'M' || $sex ne 'm' || $sex ne 'f' || $sex ne 'F') {
    $sex = <STDIN>;
    chomp($sex);
    if ($sex eq 'M' || $sex eq 'm' || $sex eq 'F' || $sex eq 'f') {
	last;
    }
    else {
	print 'Value is out of range. Please, type M or F';
    }
}
$H = $age * 2.5;
$A = $age * 5;
{
    print 'According to the Half-Age based dosing method the charge is ' . $H

      . ' mC';
}
{
    print 'According to the Age-based dosing method the charge is ' . $A .

      ' mC';
}
if ($age < 65) {
    print 'According to (Bennett et al. 2012) the charge is 200 mC';
}
elsif ($age > 65) {
    print 'According to (Bennett et al. 2012) the charge is 250 mC';
}
if ($sex eq 'M' || $sex eq 'm') {
    print 'According to (Schoyen et al. 2015) the Age-based dose is ' . ($A +

      25) . ' to ' . ($A + 50) . ' mC. The Half-age dose is ' . ($H + 25) .

      ' to ' . ($H + 50) . ' mC';
}
elsif ($sex eq 'F' || $sex eq 'f') {
    print 'According to (Schoyen et al. 2015)  The Half-age dose is ' . ($H -

      50) . ' to ' . ($H - 25) . ' mC. The Age-based dose is ' . ($A - 50) .

      ' to ' . ($A - 25) . ' mC.';

last;
}
sub readline {
    if ($getline_ok = (($_ = <>) ne '')) {
	;
    }
    $_;
}
