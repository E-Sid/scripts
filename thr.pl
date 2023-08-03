#!/usr/perl
use strict;
use warnings;

print "This is Maximum Heart Rate (MHR) Calculator\n";
print "Please, enter age\n";
my $age = <>;
while ($age < 0 || $age > 160 || $age == ""){
print ("Value is out of range, please, enter age again\n"); 
    $age = <>;
   chomp $age;
}
my $mhr = (220 - $age);
print("The MHR is " . int(220 - $age) . "\n");
print("The 64% level would be " . int(0.64 * $mhr) . " bpm\n");
print("The 76% level would be " . int(0.76 * $mhr) . " bpm\n");        
 


