#!/usr/perl
use strict;
use warnings;
no warnings 'deprecated';

#**Clinical and Seizure Based Stimulation (CASBAS):**
#1. Seizure duration on EEG >= 20s.
#2. Good Postictal suppression (suggest 80%)
#3. Maximal amplitude > 150 µV (inspection of EEG)
#4. Coherence of hemispheres (Maximum Sustained Coherence on Thymatron System IV device) > 85%
#5. Peak ictal heart rate > 110/min
#A score of one point is given to each item
#- If the score is >= 4
#	- Clinical improvement Insufficient and no. of sessions >= 6:
#		- Yes: Increase Stimulus intensity at next session
#		- No: Remain Stimulus intensity at next session
#- Else if the score is 3
#	- Clinical Improvement Sufficient and no. of sessions >= 6
#		-  Yes: Remain Stimulus intensity at next session
#		- No: Increase Stimulus intensity at next session
#- Else if the score is >= 2
#	- Charge =< 504 mC (100%)
#		- Yes: Restimulation at the same session with increased charge
#		- No: Restimulation at the same session with same charge

print "This is CASBAS Score\n";
print "=====================\n";

print 'Please, enter the session number: ';
my $SESSION =<>;
while ($SESSION < 0 ||  $SESSION > 100 || $SESSION  !~ /^[0-9]+$/ || $SESSION eq "") {
print ("Value is out of range. Please, enter a valid number: ");
$SESSION = <>;
chomp $SESSION;
}

print 'Please, enter the charge: ';
my $Q =<>;
while ($Q < 0 ||  $Q > 1200 || $Q  !~ /^[0-9]+$/ || $Q eq "") {
print ("Value is out of range. Please, enter a valid number: ");
$Q = <>;
chomp $Q;
}


print 'Please, enter the CGI-I: ';
my $CGI =<>;
while ($CGI < 0 ||  $CGI > 7 || $CGI  !~ /^[0-9]+$/ || $CGI eq "") {
print ("Value is out of range. Please, enter a valid number: ");
$CGI = <>;
chomp $CGI;
}


print 'EEG duration: please, enter EEG duration in seconds: ';
my $EEG =<>;
while ($EEG < 0 ||  $EEG > 720 || $EEG  !~ /^[0-9]+$/ || $EEG eq "") {
print ("Value is out of range. Please, enter a valid number: ");
$EEG = <>;
chomp $EEG;
}
my $A;
if ($EEG >= 20){
    ($A = 1);
}
else { ($A = 0);
}


print 'Post-ictal suppression: Please, enter post-ictal suppression percentage (0-100) (if PSI is N/A type 0): ';
my $PSI =<>;
while ($PSI  < 0 ||  $PSI > 100 || $PSI  !~ /^[0-9]+$/ || $PSI eq "") {
print ("Value is out of range. Please, enter a valid number: ");
$PSI = <>;
chomp $PSI;
}
my $B;
if ($PSI >= 80){
    ($B = 1);
}
else {$B = 0;
}

print 'Maximal amplitude: please, enter the maximum amplitude on the EEG. Write the first number above the cut-off on the EEG trail eg 151 or 201: ';
my $amp =<>;
while ($amp  < 0 ||  $amp > 3000 || $amp  !~ /^[0-9]+$/ || $amp eq "") {
print ("Value is out of range. Please, enter a valid number: ");
$amp = <>;
chomp $amp;
}
my $C;
if ($amp > 150){
    ($C = 1);
}
else { ($C = 0);
}


print 'Coherence of hemispheres: please, enter the Maximum Sustained Coherence (0-100): ' ;
my $MSC =<>;
while ($MSC  < 0 ||  $MSC > 100 || $MSC  !~ /^[0-9]+$/ || $MSC eq "") {
print ("Value is out of range. Please, enter a valid number:");
$MSC = <>;
chomp $MSC;
}
my $D;
if ($MSC >= 20){
    ($D = 1);
}
else { ($D = 0);
}

print 'Peak heart rate: please, enter the peak heart rate: ';
my $pHR =<>;
while ($pHR  < 0 ||  $pHR > 600 || $pHR  !~ /^[0-9]+$/ || $pHR eq "") {
print ("Value is out of range. Please, enter a valid number:");
$pHR = <>;
chomp $pHR;
}
my $E;
if ($pHR > 110){
    ($E = 1);
}
else { ($E = 0);
}

print"\n";
print 'The total CASBAS score is: ';
print ($A + $B + $C + $D + $E);
print "/5\n";
my $CASBAS;
$CASBAS = $A + $B + $C + $D + $E;

if ($CASBAS >= 4 && $CGI >= 4 && $SESSION >= 6 ){
    print "Please, increase charge at the next session\n";
}
    elsif ($CASBAS >= 4 && $CGI < 4 ){
	print "Please, continue at the same charge\n";	
}
    elsif ($CASBAS >= 4 && $SESSION < 6 ){
	print "Please, continue at the same charge\n";	
}

elsif ($CASBAS <= 2 && $Q <= 504 ){
   print "Please, restimulate at higher charge at this session\n";
}
elsif ($CASBAS <= 2 && $Q > 504 ){
   print "Please, restimulate at the same charge at this session\n";
}

elsif ($CASBAS = 3 && $SESSION < 6 ){
    print "Please, increase the charge at the next session\n";
}
elsif ($CASBAS = 3 && $CGI >= 4){
    print "Please, increase the charge at the next session\n";
}
elsif ($CASBAS = 3 && $CGI < 4 && $SESSION >= 6 ){
    print "Please, continue at the same charge at the next session\n";
}

