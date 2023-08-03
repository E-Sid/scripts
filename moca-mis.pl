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

print 'This is MoCA Memory Index Score Calculator';
print '==========================================';
print 'Please, enter the score for delayed free recall';
$F = &readline();
while ($F < 0 || $F > 5) {
    if ($F >= 0 && $F <= 5) {
    last; 
    }
    else {
	print 'The value is out of range, pleae, enter a valid number';
    }
    $F = &readline();
}
if ($F == 5) {
{    print 'The MIS score is 15/15';
     exit; }
}
elsif ($F >= 0 && $F <= 4) {
    print 'Please, enter the score for category recall';
}
$C = &readline();
while ($C < 0 || $C > 5 - $F) {
    if ($C >= 0 && $C <= 5 - $F) {
	last;
    }
    else {
	print 'The value is out of range, pleae, enter a valid number';
    }
    $C = &readline();
}
if ($C == 5) {
   {  print 'The MIS score is 10/15';
      $ExitValue = 2; last; }
}
if ($F + $C == 5) {
   {  print 'The MIS score is ' . (int($F) * 3 + int($C) * 2) . '/15';
      exit; }
}
elsif ($C >= 0 && $C <= 4) {
    $R = $F + $C;
}
print 'Please, enter the score for cue recall';
$Q = &readline();
while ($Q < 0 || $Q > 5 || $Q > 5 - $R) {
    if ($Q >= 0 && $Q <= 5 - $R) {
	last;
    }
    else {
	print 'The value is out of range, pleae, enter a valid number';
    }
    $Q = &readline();
}
if ($Q == 5) {
    { print 'The MIS score is 5/15';
      exit; }
}
if ($F + $C + $Q == 5) {
    { print 'The MIS score is ' . (int($F) * 3 + int($C) * 2 + int($Q)) . '/15';
      exit; }
}
elsif ($Q >= 0 && $Q <= 5 - $R) {
{    print 'MIS score is ' . (int($F) * 3 + int($C) * 2 + int($Q)) . '/15';

     last; }
}
exit;

sub readline {
    if ($getline_ok = (($_ = <>) ne '')) {
	;
    }
    $_;
}

