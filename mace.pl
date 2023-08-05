#!/usr/perl
use strict;
use warnings;

print "This is Mini-Addenrbooke's Cognitive Examination (M-ACE-III) Calculator\n";
    print "===================================================================\n";
print("Attention: Please, type score for orientation in time to calculate M-ACE [0-4]:  ");
our $A0 = <>;
while ($A0 > 4 || $A0 < 0 || $A0 !~ /^[0-9]+$/ || $A0 eq ""){
    print ("Value is out of range. Please, enter a valid number: ");
	  $A0 = <>;
          chomp $A0;
}

print("Fluency: Please, type score for category fluency [0-7]: ");
my $F2 = <>;
while ($F2 < 0 || $F2 > 7 || $F2 !~ /^[0-9]+$/ || $F2 eq ""){
    print ("Value is out of range. Please, enter a valid number[0-7]: ");
	  $F2 = <>;
	  chomp $F2;
}
print("Memory: Please, type score for name & address (anterograde memory) [0-7]: ");
my $M2 = <>;
while ($M2 < 0 || $M2 > 7 || $M2 !~ /^[0-9]+$/ || $M2 eq ""){
    print ("Value is out of range. Please, enter a valid number [0-7]: ");
	  $M2 = <>;
	  chomp $M2;
}
print("Visuospatial: Please, type score for Clock Drawing Test [0-5]: ");
my $V3 = <>;
while ($V3 < 0 || $V3 > 5 || $V3 !~ /^[0-9]+$/ || $V3 eq ""){
    print ("Value is out of range. Please, enter a valid number [0-5]: ");
	  $V3 = <>;
	  chomp $V3;
}
print("Memory: Please, type score for recall of name and address (delayed recall) [0-7]: ");
my $M4 = <>;
while ($M2 < $M4 || $M4 < 0 || $M4 > 7 || $M4 !~ /^[0-9]+$/ || $M4 eq ""){
    print ("Value is out of range. Please, enter a valid number: ");
	  $M4 = <>;
	  chomp $M4;
}
print "\n";
    print 'The total M-ACE score is ';
    print(our $A0 + $F2 + $M2 + $V3 + $M4);
    print"/30\n";
    print '- The Attention subset score is ';
    print($A0 + 0);
    print "/4\n";
    print "- The Fluency subset score of is ";
    print($F2 + 0);
    print "/7\n";
    print '- The Memory subset score of is ' . ($M2 + $M4) . "/14\n";
    print "- The Visuospatial abilities subset score ofis ";
    print($V3+ 0);
    print "/5\n";
    print "\n"
