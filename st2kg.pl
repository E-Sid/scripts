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

print 'This is stone(s) (st) to kilogram(s) (kg) converter';
print '==================================';
printf (('Please, type the weight in stones (st):  '));
$st = &readline();
while ($st < 0) {
    print 'Value is out of range, please type a valid number';
    $Kg = &readline();
    if ($st > 0) {
	last;
    }
}
$kg = $st / 0.15747;
print 'The weight is ' . $kg . ' kg'; {
    last; }

sub readline {
    if ($getline_ok = (($_ = <>) ne '')) {
	;
    }
    $_;
}
