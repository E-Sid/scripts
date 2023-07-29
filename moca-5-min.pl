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

printf

  (('Montreal Cognitive Assessment 5-minute Protocol   1. Attention: Please, enter score for immediate recall of 5 words [0-5]:  '));
$A = &readline();
while ($A < 0 || $A > 5) {
    print 'Value is out of range, please, type a valid number';
    $A = &readline();
    if ($A >= 0 && $A <= 5) {
	last;
    }
}
printf

  (('2. Executive function: Please, enter score for verbal fluency (animals category (0.5 for each correct output [0-9]:  '));
$E = &readline();
while ($E < 0 || $E > 9) {
    print 'Value is out of range, please, type a valid number';
    $E = &readline();
    if ($E >= 0 && $E <= 9) {
	last;
    }
}
printf

  (('3. Orientation: Please, type score for 6-item date and geographic orientation [0-6]:  '));
$O = &readline();
while ($O < 0 || $O > 6) {
    print 'Value is out of range, please, type a valid number';
    $E = &readline();
    if ($O >= 0 && $O <= 6) {
	last;
    }
}
printf

  (('4. Memory: Please, enter score for delayed recall of 5 learned words (2 points for each word recalled spontaneously, if not 1 point for each word recalled by cued recall or recognition but not spontaneously recalled [0-10]:  '));
$M = &readline();
while ($M < 0 || $M > 10) {
    print 'Value is out of range. Please, type a valid number';
    $M = &readline();
    if ($M >= 0 && $M <= 10) {
	last;
    }
}
{
    print 'The total MoCA 5-min protocol is   ' . (int($A) + $E + int($O) +

      int($M)) . '/30';

last;
}
sub readline {
    if ($getline_ok = (($_ = <>) ne '')) {
	;
    }
    $_;
}
