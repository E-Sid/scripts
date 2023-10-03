#!/usr/perl
use strict;
use warnings;
no warnings 'deprecated';

print "This is Addenrbooke's Cognitive Examination (ACE-III) Calculator\n";
print "================================================================\n";
print 'Attention: Please, type score for orientation in time [0-5]: ';
my $A1 = <>;
while ($A1 < 0 || $A1 > 5 || $A1 !~ /^[0-9]+$/ || $A1 eq ""){
    print ("Value is out of range. Please, enter a valid number: ");
	  $A1 = <>;
	  chomp $A1;
}
 if ($A1 == 0){
     our $A0 = $A1;
       chomp $A0;
}
elsif ($A1 == 5){
      our $A0 = $A1 -1
}
else
 {
print("Attention: Please, type score for orientation in time to calculate M-ACE [0-4]:  ");
our $A0 = <>;
while ($A0 > $A1 || $A0 < 0 || $A0 > 4 || $A1 == 4 && $A0 < 3 || $A1 == 3 && $A0 < 2 || $A1 == 2 && $A0 < 1 || $A0 !~ /^[0-9]+$/ || $A0 eq ""){
    print ("Value is out of range. Please, enter a valid number: ");
	  $A0 = <>;
          chomp $A0;
}
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
print("Attention: Please, type score for serial 7s calculation (concentration) [0-5]: ");
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
print("Fluency: Please, type score for letter fluency [0-7]: ");
my $F1 = <>;
while ($F1 < 0 || $F1 > 7 || $F1 !~ /^[0-9]+$/ || $F1 eq ""){
    print ("Value is out of range. Please, enter a valid number [0-7]: ");
	  $F1 = <>;
	  chomp $F1;
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
print("Memory: Please, type score for general knowledge (retrograde memory) [0-4]: ");
my $M3 = <>;
while ($M3 < 0 || $M3 > 4 || $M3 !~ /^[0-9]+$/ || $M3 eq ""){
    print ("Value is out of range. Please, enter a valid number[0-4]: ");
	  $M3 = <>;
	  chomp $M3;
}
print("Language: Please, type score for comprehension [0-3]: ");
my $L1 = <>;
while ($L1 < 0 || $L1 > 3 || $L1 !~ /^[0-9]+$/ || $L1 eq ""){
    print ("Value is out of range. Please, enter a valid number[0-3]: ");
	  $L1 = <>;
	  chomp $L1;
}
print("Language: Please, type score for sentence writing [0-2]: ");
my $L2 = <>;
while ($L2 < 0 || $L2 > 2 || $L2 !~ /^[0-9]+$/ || $L2 eq ""){
    print ("Value is out of range. Please, enter a valid number [0-2]: ");
	  $L2 = <>;
	  chomp $L2;
}
print("Language: Please, type score for single word repetition [0-2]: ");
my $L3 = <>;
while ($L3 < 0 || $L3 > 2 || $L3 !~ /^[0-9]+$/ || $L3 eq ""){
    print ("Value is out of range. Please, enter a valid number [0-2]: ");
	  $L3 = <>;
	  chomp $L3;
}
print("Language: Please, type score for proverb-1 repetition [0-1]: ");
my $L4 = <>;
while ($L4 < 0 || $L4 > 1 || $L4 !~ /^[0-9]+$/ || $L4 eq ""){
    print ("Value is out of range. Please, enter a valid number[0-1]: ");
	  $L4 = <>;
	  chomp $L4;
}
print("Language: Please, type score for proverb-2 repetition [0-1]: ");
my $L5 = <>;
while ($L5 < 0 || $L5 > 1 || $L5 !~ /^[0-9]+$/ || $L5 eq ""){
    print ("Value is out of range. Please, enter a valid number[0-1]: ");
	  $L5 = <>;
	  chomp $L5;
}
print("Language: Please, type score for object naming [0-12]: ");
my $L6 = <>;
while ($L6 < 0 || $L6 > 12 || $L6 !~ /^[0-9]+$/ || $L6 eq ""){
    print ("Value is out of range. Please, enter a valid number [0-12]: ");
	  $L6 = <>;
	  chomp $L6;
}
print("Language: Please, type score for comprehension [0-4]: ");
my $L7 = <>;
while ($L7 < 0 || $L7 > 4 || $L7 !~ /^[0-9]+$/ || $L7 eq ""){
    print ("Value is out of range. Please, enter a valid number [0-4]: ");
	  $L7 = <>;
	  chomp $L7;
}
print("Language: Please, type score for reading [0-1]: ");
my $L8 = <>;
while ($L8 < 0 || $L8 > 1 || $L8 !~ /^[0-9]+$/ || $L8 eq ""){
    print ("Value is out of range. Please, enter a valid number [0-1]: ");
	  $L8 = <>;
	  chomp $L8;
}
print("Visuospatial: Please, type score for drawing intersecting Infinity Loops [0-1]: ");
my $V1 = <>;
while ($V1 < 0 || $V1 > 1 || $V1 !~ /^[0-9]+$/ || $V1 eq ""){
    print ("Value is out of range. Please, enter a valid number [0-1]: ");
	  $V1 = <>;
	  chomp $V1;
}
print("Visuospatial: Please, type score for 3D Wire Cube [0-2]: ");
my $V2 = <>;
while ($V2 < 0 || $V2 > 2 || $V2 !~ /^[0-9]+$/ || $V2 eq ""){
    print ("Value is out of range. Please, enter a valid number [0-2]: ");
	  $V2 = <>;
	  chomp $V2;
}
print("Visuospatial: Please, type score for Clock Drawing Test [0-5]: ");
my $V3 = <>;
while ($V3 < 0 || $V3 > 5 || $V3 !~ /^[0-9]+$/ || $V3 eq ""){
    print ("Value is out of range. Please, enter a valid number [0-5]: ");
	  $V3 = <>;
	  chomp $V3;
}
print("Visuospatial: Please, type score for Counting Dots (perceptual abilities) [0-4]: ");
my $V4 = <>;
while ($V4 < 0 || $V4 > 4 || $V4 !~ /^[0-9]+$/ || $V4 eq ""){
    print ("Value is out of range. Please, enter a valid number[0-4]: ");
	  $V4 = <>;
	  chomp $V4;
}
print("Visuospatial: Please, type score for Identifying Letters (perceptual abilities) [0-4]: ");
my $V5 = <>;
while ($V5 < 0 || $V5 > 4 || $V5 !~ /^[0-9]+$/ || $V5 eq ""){
    print ("Value is out of range. Please, enter a valid number[0-4]: ");
	  $V5 = <>;
	  chomp $V5;
}
print("Memory: Please, type score for recall of name and address (delayed recall) [0-7]: ");
my $M4 = <>;
while ($M2 < $M4 || $M4 < 0 || $M4 > 7 || $M4 !~ /^[0-9]+$/ || $M4 eq ""){
    print ("Value is out of range. Please, enter a valid number: ");
	  $M4 = <>;
	  chomp $M4;
}
if ($M4 == 7){
    my $M5 = $M4 - 2;
print "\n";
print 'The total ACE-III score is ';    
print($A1 + $A2 + $A3 + $A4 + $M1 + $F1 + $F2 + $M2 + $M3 + $L1+ $L2 + $L3 + $L4 + $L5 + $L6 + $L7 + $L8 + $V1 + $V2 + $V3 + $V4 + $V5 + $M4 + $M5);
    print "/100\n";

our $attention = $A1 + $A2 + $A3 + $A4;
our $memory = $M1 + $M2 + $M3 + $M4 + $M5;
our $fluency = $F1 + $F2;
our $language = $L1 + $L2 + $L3 + $L4 + $L5 + $L6 + $L7 + $L8;
our $visuospatial = $V1 + $V2 + $V3 + $V4 + $V5;

    
    print '- The Attention subset score is '. ($A1 + $A2 + $A3 + $A4) . "/18\n";
    print '- The Memory subset score is '. ($M1 + $M2 + $M3 + $M4 + $M5) . "/26\n";
    print '- The Fluency subset score is ' . ($F1 + $F2) . "/14\n"; 	
    print '- The Language subset score is ' . ($L1 + $L2 + $L3 + $L4 + $L5 + $L6 + $L7 + $L8) . "/26\n";
    print '- The Visuospatial abilities subset score is ' . ($V1 + $V2 + $V3 + $V4 + $V5) . "/16\n";
    print "\n";

our $mace = our  $A0 + $F2 + $M2 + $V3 + $M4;
our $m_attention = $A0 + 0;
our $m_memory = $M2 + $M4;
our $m_fluency = $F2 + 0;
our $cdt = $V3 + 0;
   
    print 'The total M-ACE score is ';
    print($A0 + $F2 + $M2 + $V3 + $M4);
    print"/30\n";
    print '- The Attention subset score of M-ACE is ';
    print($A0 + 0);
    print "/4\n";
    print "- The Fluency subset score of M-ACE is ";
    print($F2 + 0);
    print "/7\n";
    print '- The Memory subset score of M-ACE is ' . ($M2 + $M4) . "/14\n";
    print "- The Visuospatial abilities subset score of M-ACE is ";
    print($V3+ 0);
    print "/5\n";
    print "\n"; 
    print "According to Matias-Guiu, et al.(2018) doi:10.1017/S104161021700268X.\n";
our $ace = $A1 + $A2 +  $A3 + $A4 + $M1 + $F1 + $F2 + $M2 + $M3 + $L1+ $L2 + $L3 + $L4 + $L5 + $L6 + $L7 + $L8 + $V1 + $V2 + $V3 + $V4 + $V5 + $M4 + $M5;
if    ($ace >=  0 && $ace <= 7) {our $mmse = 0}
elsif ($ace >=  8 && $ace <= 10) {our $mmse = 1}
elsif ($ace >= 11 && $ace <= 12) {our $mmse = 2}
elsif ($ace >= 13 && $ace <= 14) {our $mmse = 3}
elsif ($ace >= 15 && $ace <= 16) {our $mmse = 4}
elsif ($ace == 17) { our $mmse = 5}
elsif ($ace >= 18 && $ace <= 19) {our $mmse = 6}
elsif ($ace >= 20 && $ace <= 21) {our $mmse = 7}
elsif ($ace == 22) { our $mmse = 8}
elsif ($ace >= 23 && $ace <= 24) {our $mmse = 9}
elsif ($ace >= 25 && $ace <= 26) {our $mmse = 10}
elsif ($ace >= 27 && $ace <= 28) {our $mmse = 11}
elsif ($ace >= 29 && $ace <= 31) {our $mmse = 12}
elsif ($ace >= 32 && $ace <= 33) {our $mmse = 13}
elsif ($ace >= 34 && $ace <= 36) {our $mmse = 14}
elsif ($ace >= 37 && $ace <= 38) {our $mmse = 15}
elsif ($ace >= 39 && $ace <= 41) {our $mmse = 16}
elsif ($ace >= 42 && $ace <= 44) {our $mmse = 17}
elsif ($ace >= 45 && $ace <= 48) {our $mmse = 18}
elsif ($ace >= 49 && $ace <= 51) {our $mmse = 19}
elsif ($ace >= 52 && $ace <= 55) {our $mmse = 20}       
elsif ($ace >= 56 && $ace <= 59) {our $mmse = 21}       
elsif ($ace >= 60 && $ace <= 63) {our $mmse = 22}
elsif ($ace >= 64 && $ace <= 68) {our $mmse = 23}
elsif ($ace >= 69 && $ace <= 73) {our $mmse = 24}
elsif ($ace >= 74 && $ace <= 78) {our $mmse = 25}
elsif ($ace >= 79 && $ace <= 83) {our $mmse = 26}
elsif ($ace >= 84 && $ace <= 88) {our $mmse = 27}
elsif ($ace >= 89 && $ace <= 93) {our $mmse = 28}
elsif ($ace >= 94 && $ace <= 98) {our $mmse = 29}
elsif ($ace >= 99 && $ace <= 100){our $mmse = 30}
else {print "Out of range\n"}       
    print "The estimated MMSE score is ".  our  $mmse. "/30\n";
    print "\n";
    goto saver;
}

else
{
print("Memory: Please, type score for recognition of name and address (delayed recognition) [0-5]: ");
    my $M5 = <>;
    while ($M5 < 0 || $M5 > 5 || $M4 >= 5 && $M5 < 4 || $M4 >= 5 && $M5 < 3 || $M5 !~ /^[0-9]+$/ || $M5 eq ""){
    print ("Value is out of range. Please, enter a valid number[0-4]: ");
    $M5 = <>;
    chomp $M5;
    }
print "\n";
print 'The total ACE-III score is ';    
print($A1 + $A2 +  $A3 + $A4 + $M1 + $F1 + $F2 + $M2 + $M3 + $L1+ $L2 + $L3 + $L4 + $L5 + $L6 + $L7 + $L8 + $V1 + $V2 + $V3 + $V4 + $V5 + $M4 + $M5);
print "/100\n";

our $attention = $A1 + $A2 + $A3 + $A4;
our $memory = $M1 + $M2 + $M3 + $M4 + $M5;
our $fluency = $F1 + $F2;
our $language = $L1 + $L2 + $L3 + $L4 + $L5 + $L6 + $L7 + $L8;
our $visuospatial = $V1 + $V2 + $V3 + $V4 + $V5;

    print '- The Attention subset score is '. ($A1 + $A2 + $A3 + $A4) . "/18\n";
    print '- The Memory subset score is '. ($M1 + $M2 + $M3 + $M4 + $M5) . "/26\n";
    print '- The Fluency subset score is ' . ($F1 + $F2) . "/14\n"; 	
    print '- The Language subset score is ' . ($L1 + $L2 + $L3 + $L4 + $L5 + $L6 + $L7 + $L8) . "/26\n";
print '- The Visuospatial abilities subset score is ' . ($V1 + $V2 + $V3 + $V4 + $V5) . "/16\n";
    print "\n";

our $mace = our  $A0 + $F2 + $M2 + $V3 + $M4;
our $m_attention = $A0 + 0;
our $m_memory = $M2 + $M4;
our $m_fluency = $F2 + 0;
our $cdt = $V3 + 0;

    print 'The total M-ACE score is ';
    print($A0 + $F2 + $M2 + $V3 + $M4);
    print"/30\n";
    print ("- The Attention subset score of M-ACE is " .  ($A0 + 0) . "/4\n");
    print "- The Fluency subset score of M-ACE is ". ($F2 + 0) . "/7\n";
    print "- The Memory subset score of M-ACE is " . ($M2 + $M4) . "/14\n";
    print "- The Visuospatial abilities subset score of M-ACE is ". ($V3 + 0) ."/5\n";
print "\n";
{
    print "According to Matias-Guiu, et al.(2018) doi:10.1017/S104161021700268X.\n";
our $ace = $A1 + $A2 +  $A3 + $A4 + $M1 + $F1 + $F2 + $M2 + $M3 + $L1+ $L2 + $L3 + $L4 + $L5 + $L6 + $L7 + $L8 + $V1 + $V2 + $V3 + $V4 + $V5 + $M4 + $M5;
if    ($ace >=  0 && $ace <= 7) {our $mmse = 0}
elsif ($ace >=  8 && $ace <= 10) {our $mmse = 1}
elsif ($ace >= 11 && $ace <= 12) {our $mmse = 2}
elsif ($ace >= 13 && $ace <= 14) {our $mmse = 3}
elsif ($ace >= 15 && $ace <= 16) {our $mmse = 4}
elsif ($ace == 17) { our $mmse = 5}
elsif ($ace >= 18 && $ace <= 19) {our $mmse = 6}
elsif ($ace >= 20 && $ace <= 21) {our $mmse = 7}
elsif ($ace == 22) { our $mmse = 8}
elsif ($ace >= 23 && $ace <= 24) {our $mmse = 9}
elsif ($ace >= 25 && $ace <= 26) {our $mmse = 10}
elsif ($ace >= 27 && $ace <= 28) {our $mmse = 11}
elsif ($ace >= 29 && $ace <= 31) {our $mmse = 12}
elsif ($ace >= 32 && $ace <= 33) {our $mmse = 13}
elsif ($ace >= 34 && $ace <= 36) {our $mmse = 14}
elsif ($ace >= 37 && $ace <= 38) {our $mmse = 15}
elsif ($ace >= 39 && $ace <= 41) {our $mmse = 16}
elsif ($ace >= 42 && $ace <= 44) {our $mmse = 17}
elsif ($ace >= 45 && $ace <= 48) {our $mmse = 18}
elsif ($ace >= 49 && $ace <= 51) {our $mmse = 19}
elsif ($ace >= 52 && $ace <= 55) {our $mmse = 20}       
elsif ($ace >= 56 && $ace <= 59) {our $mmse = 21}       
elsif ($ace >= 60 && $ace <= 63) {our $mmse = 22}
elsif ($ace >= 64 && $ace <= 68) {our $mmse = 23}
elsif ($ace >= 69 && $ace <= 73) {our $mmse = 24}
elsif ($ace >= 74 && $ace <= 78) {our $mmse = 25}
elsif ($ace >= 79 && $ace <= 83) {our $mmse = 26}
elsif ($ace >= 84 && $ace <= 88) {our $mmse = 27}
elsif ($ace >= 89 && $ace <= 93) {our $mmse = 28}
elsif ($ace >= 94 && $ace <= 98) {our $mmse = 29}
elsif ($ace >= 99 && $ace <= 100){our $mmse = 30}
else {print "Out of range\n"}       
    print "The estimated MMSE score is ".  our  $mmse. "/30\n";
    print "\n";
  saver: while (1) {
print "Do you want to save the output to file (ace.txt) [yes/no]? ";
my $ans = lc(<STDIN>);
chomp($ans);
if ($ans eq 'yes')  {	   
    my $output = 'ace.txt';
open(FH,'>', $output) or die $!;
print FH 
my $str = <<END;
}
The ACE-III score is $ace/100
- The Attention subset score is $attention/18
- The Memory subset score is $memory/26
- The Fluency subset score is $fluency 	
- The Language subset score is ' $language/26
- The Visuospatial Abilities subset score is $visuospatial/16

The Mini-ACE score is $mace/30
- The M-ACE Attention subset score is $attention/4
- The M-ACE Memory subset score is $memory/14
- The M-ACE Fluency subset score is $fluency/7	
- The M-ACE Visuospatial Abilities subset score is $cdt/5

- The estimated MMSE score is $mmse/30

END
# print FH $str;
close(FH);
    print "written to ace.txt\n";
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
}
}


