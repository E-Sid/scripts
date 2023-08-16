#!/usr/perl
use strict;
use warnings;

print "This is Mini-Cog Test Calculator\n";
print "================================\n";
print "Please, enter word recall results [0-3]: ";
my $R = <>;
chomp $R;
while ($R < 0 || $R > 3 || $R !~/^[0-9]+$/ || $R eq ""){
    print ("Value is out of range. Please, enter a valid number [0-3]: ");
$R = <>;
chomp $R;
}
print "Please, enter clock drawing test results [0-2]: ";
my $CDT = <>;
chomp $CDT;
while ($CDT < 0 || $CDT > 2 || $CDT !~/^[0-9]+$/ || $CDT eq ""){
print ("Value is out of range. Please, enter a valid number [0-2]: ");
$CDT = <>;
chomp $CDT;
}
my $minicog = $R + $CDT;
print "The Mini-Cog score is " . $minicog . "/5";
print "\n";
    
	   
