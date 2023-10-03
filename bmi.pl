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

printf (('This is a BMI Calculator'));
print "/n";
print 'Please, enter weight in kilograms:  ';
$W = &readline();
while ($W < 0 || $W > 800) {
    print 'out of range, please, retype the weight';
    $W = &readline();
    if ($PW > 0 && $age < 800) {
	last;
    }
}
print 'Please, enter height in metres: ';
$H = &readline();
while ($H < 0 || $H > 6) {
    print 'out of range, please, retype the weight';
    $H = &readline();
    if ($H > 0 && $H < 6) {
	last;
    }
}
{
    $w = $W + 0;
    $h = $h +0;
$bmi = $W / $H ** 2;
    print 'The BMI is  ' . $W / $H ** 2;

last;
}
sub readline {
    if ($getline_ok = (($_ = <>) ne '')) {
	;
    }
    $_;
}
while (1) {
print "Do you want to save the output to file (bmi.txt) [yes/no]? ";
my $ans = lc(<STDIN>);
chomp($ans);
if ($ans eq 'yes')  {	   
    my $output = 'bmi.txt';
open(FH,'>', $output) or die $!;
print FH 
my $str = <<END;

The weight is $w
The height is $h
The BMI is $bmi

END
# print FH $str;
close(FH);
    print "written to bmi.txt\n";
    last;
}	
elsif ($ans eq 'no') {
    print "Not saved\n";
    last;
	}
else {
print "out of range, please answer [yes or no] ";
 }
}
