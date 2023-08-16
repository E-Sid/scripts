#!/usr/perl
use strict;
use warnings;

print "This is Addenrbooke's Cognitive Examination - Revised (ACE-R) Calculator\n";
    print "====================================================================\n";
print 'Attention: Please, type score for orientation in time [0-5]: ';
my $A1 = <>;
while ($A1 < 0 || $A1 > 5 || $A1 !~ /^[0-9]+$/ || $A1 eq ""){
    print ("Value is out of range. Please, enter a valid number: ");
	  $A1 = <>;
	  chomp $A1;
}
print("Attention: Please, type score for orientation in place [0-5]: ");
my $A2 = <>;
while ($A2 < 0 || $A2 > 5 || $A2 !~ /^[0-9]+$/ || $A2 eq ""){
    print ("Value is out of range. Please, enter a valid number [0-5]: ");
	  $A2 = <>;
	  chomp $A2;
}
print("Attention: Please, type score for 3-item registration [0-3]: ");
my $A3 = <>;
while ($A3 < 0 || $A3 > 3 || $A3 !~ /^[0-9]+$/ || $A3 eq ""){
    print ("Value is out of range. Please, enter a valid number [0-3]: ");
	  $A3 = <>;
	  chomp $A3;
}
print("Attention: Please, type score for spelling WORLD backwards (concentration) [0-5]: ");
my $A4 = <>;
while ($A4 < 0 || $A4 > 5 || $A4 !~ /^[0-9]+$/ || $A4 eq ""){
    print ("Value is out of range. Please, enter a valid number [0-5]: ");
	  $A4 = <>;
	  chomp $A4;
}
print("Memory: Please, type score for 3 item recall (immediate recall) [0-3]: ");
my $M1 = <>;
while ($A3 < $M1 || $M1 < 0 || $M1 > 3 || $M1 !~ /^[0-9]+$/ || $M1 eq ""){
    print ("Value is out of range. Please, enter a valid number: ");
	  $M1 = <>;
	  chomp $M1;
}
print("Language: Please, type score for 'Close Your Eyes' (Comprehension) [0-1]: ");
my $L0 = <>;
while ($L0 < 0 || $L0 > 1 || $L0 !~ /^[0-9]+$/ || $L0 eq ""){
    print ("Value is out of range. Please, enter a valid number [0-1]: ");
	  $L0 = <>;
	  chomp $L0;
}      
print("Language: Please, type score for task comprehension [0-3]: ");
my $L1 = <>;
while ($L1 < 0 || $L1 > 3 || $L1 !~ /^[0-9]+$/ || $L1 eq ""){
    print ("Value is out of range. Please, enter a valid number[0-3]: ");
	  $L1 = <>;
	  chomp $L1;
}
print("Language: Please, type score for sentence writing [0-1]: ");
my $L2 = <>;
while ($L2 < 0 || $L2 > 1 || $L2 !~ /^[0-9]+$/ || $L2 eq ""){
    print ("Value is out of range. Please, enter a valid number [0-1]: ");
	  $L2 = <>;
	  chomp $L2;
}
print("Language: Please, type score for proverb repetition [0-1]: ");
my $L5 = <>;
while ($L5 < 0 || $L5 > 1 || $L5 !~ /^[0-9]+$/ || $L5 eq ""){
    print ("Value is out of range. Please, enter a valid number[0-1]: ");
	  $L5 = <>;
	  chomp $L5;
}
print("Language: Please, type score for object naming  [0-2]: ");
my $L6A = <>;
while ($L6A < 0 || $L6A > 2 || $L6A !~ /^[0-9]+$/ || $L6A eq ""){
    print ("Value is out of range. Please, enter a valid number [0-2]: ");
	  $L6A = <>;
	  chomp $L6A;
}      
print("Visuospatial: Please, type score for drawing Intersecting Pentagons [0-1]: ");
my $V1 = <>;
while ($V1 < 0 || $V1 > 1 || $V1 !~ /^[0-9]+$/ || $V1 eq ""){
    print ("Value is out of range. Please, enter a valid number [0-1]: ");
	  $V1 = <>;
	  chomp $V1;
}
    print 'The Total Mini-Mental State Examination (MMSE) score is ' . ($A1 + $A2 + $A3 + $A4 + $M1 + $L0 + $L1 + $L2 + $L5 + $L6A + $V1) . "/30\n";
    print "\n";
