#!/usr/perl
use strict;
use warnings;

eval 'exec /usr/bin/perl -S $0 ${1+"$@"}'
    if my $running_under_some_shell;
			# this emulates #! processing on NIH machines.
			# (remove #! line above if indigestible)

eval '$'.$1.'$2;' while $ARGV[0] =~ /^([A-Za-z_0-9]+=)(.*)/ && shift;
			# process any FOO=bar switches

# This equation is based on Programming in Perl book

print "This is Temperature Scale: Fahrenheit to Celsius converter\n";
print "==========================================================\n";    
print "Please, enter temperature in Fahrenheit? ";
my $temp = <>;
chomp($temp);
while ($temp < -459.67) {
    print ("Value is below the absolute zero, please, enter a valid number: ");
$temp = <>;
chomp($temp);    
}
    my $celsius = ($temp-= 32)*=5/9;
print "The temperature in Celsius is ". $celsius . " C";
    print "\n";
while (1) {
print "Do you want to save the output to file (F2C.txt) [yes or no]? ";
my $ans = lc(<STDIN>);
chomp($ans);
if ($ans eq 'yes')  {	   
    my $output = 'F2C.txt';
open(FH,'>', $output) or die $!;
print FH 
my $str = <<END;
The temperature in Celsius is $celsius C
END
# print FH $str;
close(FH);
    print "written to F2C.txt\n";
    last;
}	
elsif ($ans eq 'no') {
    print "not saved\n";
    last;
	}
else {
print "out of range, please answer [yes or no] ";
 }
}

