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

print 'This is kilogram(s) (Kg) to pound(s) (lb) converter';
print '==================================';
printf (('Please, type the weight in kilograms (Kg):  '));
$Kg = &readline();
while ($Kg < 0) {
    print 'Value is out of range, please type a valid number';
    $Kg = &readline();
    if ($Kg > 0) {
	last;
    }
}
$lb = $Kg * 2.2046;
{ print 'The weight is ' . $lb . ' lb';
  last; }

sub readline {
    if ($getline_ok = (($_ = <>) ne '')) {
	;
    }
    $_;
}
