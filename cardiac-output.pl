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

print 'Cardiac Output Calculator';
print '=========================';
printf (('Please, enter the stroke volume [mL/min]:  '));
$SV = &readline();
while ($SV <= 0) {
    print 'out of range, please, retype the stroke volume: ';
    $SV = &readline();
    if ($SV > 0) {
	last;
    }
}
printf (('Please, enter the Heart Rate [bpm]:  '));
$HR = &readline();
while ($HR <= 0) {
    print 'out of range, please, retype the stroke volume: ';
    $HR = &readline();
    if ($HR > 0) {
	last;
    }
}
$CO = $SV * $HR;
$Q = $CO / 1000;
{
print 'The cardiac output formula is CO = SV * HR';
print 'The cardiac output is ' . $Q . ' L/min';
print 'The cardiac output is ' . $CO . ' mL/min';
last;
}
sub readline {
    if ($getline_ok = (($_ = <>) ne '')) {
	;
    }
    $_;
}
