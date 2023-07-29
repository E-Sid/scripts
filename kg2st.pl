#!/usr/bin/perl
eval 'exec /usr/bin/perl -S $0 ${1+"$@"}'
    if $running_under_some_shell;
			# this emulates #! processing on NIH machines.
			# (remove #! line above if indigestible)

eval '$'.$1.'$2;' while $ARGV[0] =~ /^([A-Za-z_0-9]+=)(.*)/ && shift;
			# process any FOO=bar switches


$, = ' ';		# set output field separator
$\ = "\n";		# set output record separator

print 'This is kilogram(s) (kg) to stone(s) (st) converter';
print '==================================';
printf (('Please, type the weight in kilograms (kg):  '));
$kg = &readline();
while ($kg < 0) {
    print 'Value is out of range, please type a valid number';
    $Kg = &readline();
    if ($kg > 0) {
	last;
    }
}
$st = $kg * 0.15747;
{ print 'The weight is ' . $st . ' st';
  last; }

sub readline {
    if ($getline_ok = (($_ = <>) ne '')) {
	;
    }
    $_;
}
