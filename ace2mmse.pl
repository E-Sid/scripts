#!/usr/perl
use strict;
use warnings;


print "This is an Addenrbooke's Cognitive Examination (ACE-III) score converter to Mini Menstal State Examination according to Matias-Guiu, et al.(2018) doi:10.1017/S104161021700268X.";
print "\n";
print 'Please, type the total score for ACE-III [0-100]: ';
our $ace = <>;
while ($ace < 0 || $ace > 100 || $ace !~ /^[0-9]+$/ || $ace eq ""){
    print ("Value is out of range. Please, enter a valid number [0-100]: ");
	  $ace = <>;
	  chomp $ace;
}
    if    ($ace >=  0 && $ace <= 7) {our $mmse = 0; print "MMSE score is " .  $mmse  . "/30\n" }
elsif ($ace >=  8 && $ace <= 10) {our $mmse = 1; print "MMSE score is " .  $mmse  . "/30\n" }
elsif ($ace >= 11 && $ace <= 12) {our $mmse = 2}
elsif ($ace >= 13 && $ace <= 14) {our $mmse = 3}
elsif ($ace >= 15 && $ace <= 16) {our $mmse = 4}
elsif ($ace == 17) {our $mmse = 5}
elsif ($ace >= 18 && $ace <= 19) {our $mmse = 6}
elsif ($ace >= 20 && $ace <= 21) {our $mmse = 7}
elsif ($ace == 22) {our $mmse = 8}
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
elsif ($ace >= 99 && $ace <= 100){our $mmse = 0}
else {print "Out of range\n"}       
print "The ACE-III score is " . (our $ace + 0) . "/100\n";
print "The estimated MMSE score is ".  our $mmse. "/30\n"; 
our $aces = $ace + 0;


while (1) {
print "Do you want to save the output to file (ace2mmse.txt) [yes/no]? ";
my $ans = lc(<STDIN>);
chomp($ans);
if ($ans eq 'yes')  {	   
    my $output = 'ace2mmse.txt';
open(FH,'>', $output) or die $!;
print FH 
my $str = <<END;
}
The ACE-III score is $aces/100
The estimated MMSE score is $mmse/30 
END
# print FH $str;
close(FH);
    print "written to ace2mmse.txt\n";
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
