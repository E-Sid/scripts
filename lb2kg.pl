#!/usr/bin/perl
eval 'exec /usr/bin/perl -S $0 ${1+"$@"}'
    if $running_under_some_shell;
			# this emulates #! processing on NIH machines.
			# (remove #! line above if indigestible)

eval '$'.$1.'$2;' while $ARGV[0] =~ /^([A-Za-z_0-9]+=)(.*)/ && shift;
			# process any FOO=bar switches

$, = ' ';		# set output field separator
$\ = "\n";		# set output record separator

print 'This is pound(s) (lb) to kilgoram(s) (Kg) converter';
print '==================================';
printf (('Please, type the weight in pounds (lb):  '));
$lb = &readline();
while ($lb < 0) {
    print 'Value is out of range, please type a valid number';
    $kg = &readline();
    if ($lb > 0) {
	last;
    }
}
$kg = $lb / 2.2046;
{ print 'The weight is ' . $kg . ' kg';
  last; }

sub readline {
    if ($getline_ok = (($_ = <>) ne '')) {
	;
    }
    $_;
}
