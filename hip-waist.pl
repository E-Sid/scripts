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

print 'This is hip-waist ratio calculator';
print '==================================';
print

  'Note: the unit of measurement has to be consistent between both either cm for both waist and hip or inches';
printf (('Please, type the measurement for waist:  '));
$W = &readline();
while ($W < 0) {
    print 'Value is out of range, please type a valid number';
    $W = &readline();
    if ($W > 0) {
	last;
    }
}
printf (('Please, type the measurement for hip:  '));
$H = &readline();
while ($H < 0) {
    print 'Value is out of range, please type a valid number';
    $H = &readline();
    if ($W > 0) {
	last;
    }
}
$R = $W / $H;
{ print 'The hip-waist ratio is ' . $R;
last;
}
sub readline {
    if ($getline_ok = (($_ = <>) ne '')) {
	;
    }
    $_;
}
