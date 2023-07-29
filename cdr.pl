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

print

  'Clinical Dementia Rating + Frontotemporal Lobar Degeneration (CDR-FTLD) Scale';
print

  '=============================================================================';
printf (('1. Please, type the score for memory: '));
while ($M != 0 || $M != 0.5 || $M != 1 || $M != 2 || $M != 3) {
    $M = &readline();
    if ($M != 0 && $M != 0.5 && $M != 1 && $M != 2 && $M != 3) {
	print 'out of range';
    }
    else {
	last;
    }
}
printf (('2. Please, type the score for orientation: '));
while ($O != 0 || $O != 0.5 || $O != 1 || $O != 2 || $O != 3) {
    $O = &readline();
    if ($O != 0 && $O != 0.5 && $O != 1 && $O != 2 && $O != 3) {
	print 'out of range';
    }
    else {
	last;
    }
}
printf (('3. Please, type the score for judgement: '));
while ($J != 0 || $J != 0.5 || $J != 1 || $J != 2 || $J != 3) {
    $J = &readline();
    if ($J != 0 && $J != 0.5 && $J != 1 && $J != 2 && $J != 3) {
	print 'out of range';
    }
    else {
	last;
    }
}
printf (('4. Please, type the score for community affairs: '));
while ($C != 0 || $C != 0.5 || $C != 1 || $C != 2 || $C != 3) {
    $C = &readline();
    if ($C != 0 && $C != 0.5 && $C != 1 && $C != 2 && $C != 3) {
	print 'out of range';
    }
    else {
	last;
    }
}
printf (('5. Please, type the score for hobbies: '));
while ($H != 0 || $H != 0.5 || $H != 1 || $H != 2 || $H != 3) {
    $H = &readline();
    if ($H != 0 && $H != 0.5 && $H != 1 && $H != 2 && $H != 3) {
	print 'out of range';
    }
    else {
	last;
    }
}
printf (('6. Please, type the score for personal care: '));
while ($P != 0 || $P != 1 || $P != 2 || $P != 3) {
    $P = &readline();
    if ($P != 0 && $P != 1 && $P != 2 && $P != 3) {
	print 'out of range';
    }
    else {
	last;
    }
}
{
    print 'The total CDR-FTLD score is  ' . ($M + $O + $J + $C + $H + $P) .

      '/18 via SOB method';

last;
}
sub readline {
    if ($getline_ok = (($_ = <>) ne '')) {
	;
    }
    $_;
}
