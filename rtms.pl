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

print 'rTMS Dose Calculator';
print '=====================';
printf ((' Please, enter the resting motor threshold (rMT): '));
$MT = &readline();
while ($MT <= 0) {
    print 'out of range, please, retype the rMT';
    $MT = &readline();
    if ($MT > 0) {
	last;
    }
}
{
    print 'The treatment intensity should be 120% of the rMT which is ' . $MT

      * 1.2;

last;
}
sub readline {
    if ($getline_ok = (($_ = <>) ne '')) {
	;
    }
    $_;
}
