#!/usr/perl
use strict;
use warnings;

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
