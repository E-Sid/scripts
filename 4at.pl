#!/usr/perl
use strict;
use warnings;

print "This is 4AT Delirium Test Scoring Calculator\n";
print "===============================================\n";
print "I. Please, enter score for alertness [0 or 4]: ";
my $A = <>;
chomp $A;
while ($A < 0 || $A > 4 || $A == 1 || $A == 2 || $A == 3 || $A !~ /^[0-9]+$/ || $A eq ""){
    print ("Value is out of range. Please, enter a valid number [0 or 4]: ");
$A = <>;
chomp $A;
}    
print "II. Please, enter the score for AMT4 [0-2]: ";
my $AMT4 = <>;
chomp $AMT4;
while ($AMT4 < 0 || $AMT4 > 2 || $AMT4 !~ /^[0-9]+$/ || $AMT4 eq ""){
    print ("Value is out of range. Please, enter a valid number [0-2]: ");
$AMT4 = <>;
chomp $AMT4;
}    
print ("III. Please, enter the sore for attention [0-2]: ");
my $AT = <>;
chomp $AT;
while ($AT < 0 || $AT > 2 || $AT !~ /^[0-9]+$/ || $AT eq ""){
    print ("Value is out of range. Please, enter a valid number [0-2]: ");
$AT = <>;
chomp $AT;
}    
print ("IV. Please, enter the score for fluctuating course [0 or 4]: ");
my $F = <>;
chomp $F;
while ($F < 0 || $F > 4 || $F == 1 || $F == 2 || $F == 3 || $F !~ /^[0-9]+$/ || $F eq ""){
    print ("Value is out of range. Please, enter a valid number [0 or 4]: ");
$F = <>;
chomp $F;
}
my $AT4 = $A + $AMT4 + $AT + $F;
print "\n";
print "The total score for 4AT is " . $AT4 . "/12\n";
print "\n";
