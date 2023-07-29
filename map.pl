#!/usr/bin/perl
eval 'exec /usr/bin/perl -S $0 ${1+"$@"}'
    if $running_under_some_shell;
			# this emulates #! processing on NIH machines.
			# (remove #! line above if indigestible)

eval '$'.$1.'$2;' while $ARGV[0] =~ /^([A-Za-z_0-9]+=)(.*)/ && shift;
			# process any FOO=bar switches

#/!/bin/usr/awk -f

$, = ' ';		# set output field separator
$\ = "\n";		# set output record separator

print 'This is Mean Arterial Blood Pressure Calculator';
print '===============================================';
print 'Please, enter systolic blood pressure';
$sp = &readline();
while ($sp < $dp || $sp <= 0) {	#???
    print 'systolic blood pressure must be higher than diastolic';
    $sp = &readline();
    if ($sp > $dp && $sp > 0) {	#???
	last;
    }
}
print 'Please, enter diastolic blood pressure';
$dp = &readline();
while ($dp > $sp || $dp <= 0) {	#???
    print 'diastolic blood pressure must be lower than systolic';
    $dp = &readline();
    if ($sp > $dp && $sp > 0) {	#???
	last;
    }
}
$pp = $sp - $dp;
$MAP = $dp + (1 / 3 * $pp);
{ print 'The Mean Arterial Blood Pressure is ' . $MAP . ' mmHg';
  last; }

sub readline {
    if ($getline_ok = (($_ = <>) ne '')) {
	;
    }
    $_;
}
