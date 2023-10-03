#!/usr/bin/perl
eval 'exec /usr/bin/perl -S $0 ${1+"$@"}'
    if $running_under_some_shell;
			# this emulates #! processing on NIH machines.
			# (remove #! line above if indigestible)

eval '$'.$1.'$2;' while $ARGV[0] =~ /^([A-Za-z_0-9]+=)(.*)/ && shift;
			# process any FOO=bar switches

$, = ' ';		# set output field separator
$\ = "\n";		# set output record separator

print "This is Age-based dosing & Half Age-based dosing method for ECT charge";
print "======================================================================\n";
printf (('Please, enter the age of the patient:  '));
$age = &readline();
print "\n";
{
    print 'According to the Half-Age based dosing method the charge is ' .

      ($age * 2.5) . ' mC';
}
$charge = ($age * 5);
$halfage = ($age * 2.5);
{
    print 'According to the Age-based dosing method the charge is ' . ($age *

      5) . " mC\n";
}
sub readline {
    if ($getline_ok = (($_ = <>) ne '')) {
	;
    }
    $_;
}
while (1) {
print "Do you want to save the output to file (age-based-charge.txt) [yes/no]? ";
my $ans = lc(<STDIN>);
chomp($ans);
if ($ans eq 'yes')  {	   
    my $output = 'age-based-charge.txt';
open(FH,'>', $output) or die $!;
print FH 
my $str = <<END;
According to the Age-based dosing method the charge is $charge mC
According to the Half Age-based dosing method the charge is $halfage mC
END
# print FH $str;
close(FH);
    print "written to age-based-charge.txt\n";
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
