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

printf (('This is Maximum Heart Rate (MHR) Calculator'));
print 'Please, enter age';
$A = <>;
while (! $A eq "" && $A < 0 || $A > 160) {
    $A = <>;
    if (! $A) {
	print 'Entry cannot be empty';
    }
    elsif ($A ne "" && $A >= 0 && $A <= 160 ) {
	last;
    }
    else {
	print 'Age is out of range, please, retype the age';
    }
}
{
    print 'The MHR is' . (220 - $A);
}

sub readline {
    if ($getline_ok = (($_ = <>) ne '')) {
	;
    }
    $_;
}
