#!/usr/bin/perl
eval 'exec /usr/bin/perl -S $0 ${1+"$@"}'
    if $running_under_some_shell;
			# this emulates #! processing on NIH machines.
			# (remove #! line above if indigestible)

eval '$'.$1.'$2;' while $ARGV[0] =~ /^([A-Za-z_0-9]+=)(.*)/ && shift;
			# process any FOO=bar switches

$, = ' ';		# set output field separator
$\ = "\n";		# set output record separator

printf (('Please, enter the age of the patient:  '));
$age = &readline();
{
    print 'According to the Half-Age based dosing method the charge is ' .

      ($age * 2.5) . ' mC';
}
{
    print 'According to the Age-based dosing method the charge is ' . ($age *

      5) . ' mC';
}

sub readline {
    if ($getline_ok = (($_ = <>) ne '')) {
	;
    }
    $_;
}
