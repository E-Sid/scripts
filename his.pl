#!/usr/perl
use strict;
use warnings;

print "This is Hachinski Ischaemic Score (HIS) Calculator\n";
print "==================================================\n";
print "Abrupt onset [0 or 2]: ";
my $onset = <>;
chomp $onset;
while ($onset < 0 || $onset > 2 || $onset == 1 || $onset !~ /^[0-9]+$/ || $onset eq ""){
print ("Out of range, please, enter a valid number [0 or 2]:  ");
$onset = <>;
chomp $onset; 
}
print "Stepwise deterioration [0-1]: ";
my $D = <>;
chomp $D;
while ($D < 0 || $D > 1 || $D !~ /^[0-9]+$/ || $D eq ""){
print ("Out of range, please, enter a valid number [0-1]:  ");
$D = <>;
chomp $D;
}
print "Fluctuating course [0 or 2]: ";
my $C = <>;
chomp $C;
while ($C < 0 || $C > 2 || $C == 1 || $C !~ /^[0-9]+$/ || $C eq ""){
print ("Out of range, please, enter a valid number [0 or 2]:  ");
$C = <>;
chomp $C; 
}
print "Nocturnal confusion [0-1]: ";
my $NC = <>;
chomp $NC;
while ($NC < 0 || $NC > 1 || $NC !~ /^[0-9]+$/ || $NC eq ""){
print ("Out of range, please, enter a valid number [0-1]:  ");
$NC = <>;
chomp $NC;
}
print "Relative preservation of personality [0-1]: ";
my $P = <>;
chomp $P;
while ($P < 0 || $P > 1 || $P !~ /^[0-9]+$/ || $P eq ""){
print ("Out of range, please, enter a valid number [0-1]:  ");
$P = <>;
chomp $P;
}
print "Depression [0-1]: ";
my $Dep = <>;
chomp $Dep;
while ($Dep < 0 || $Dep > 1 || $Dep !~ /^[0-9]+$/ || $Dep eq ""){
print ("Out of range, please, enter a valid number [0-1]:  ");
$Dep = <>;
chomp $Dep;
}
print "Somatic Complaints [0-1]: ";
my $S = <>;
chomp $S;
while ($S < 0 || $S > 1 || $S !~ /^[0-9]+$/ || $S eq ""){
print ("Out of range, please, enter a valid number [0-1]:  ");
$S = <>;
chomp $S;
}
print "Emotional incontinence [0-1]: ";
my $E = <>;
chomp $E;
while ($E < 0 || $E > 1 || $E !~ /^[0-9]+$/ || $E eq ""){
print ("Out of range, please, enter a valid number [0-1]:  ");
$E = <>;
chomp $E;
}
print "History or presence of hypertension [0-1]: ";
my $H = <>;
chomp $H;
while ($H < 0 || $H > 1 || $H !~ /^[0-9]+$/ || $H eq ""){
print ("Out of range, please, enter a valid number [0-1]:  ");
$H = <>;
chomp $H;
}
print "History of strokes [0 or 2]: ";
my $Stroke = <>;
chomp $Stroke;
while ($Stroke < 0 || $Stroke > 2 || $Stroke == 1 || $Stroke !~ /^[0-9]+$/ || $Stroke eq ""){
print ("Out of range, please, enter a valid number [0 or 2]:  ");
$Stroke = <>;
chomp $Stroke; 
}
print "Evidence of atherosclerosis [0-1]: ";
my $A = <>;
chomp $A;
while ($A < 0 || $A > 1 || $A !~ /^[0-9]+$/ || $A eq ""){
print ("Out of range, please, enter a valid number [0-1]:  ");
$A = <>;
chomp $A;
}
print "Focal neurlogical symptoms [0 or 2]: ";
my $NSX = <>;
chomp $NSX;
while ($NSX < 0 || $NSX > 2 || $NSX == 1 || $NSX !~ /^[0-9]+$/ || $NSX eq ""){
print ("Out of range, please, enter a valid number [0 or 2]:  ");
$NSX = <>;
chomp $NSX; 
}
print "Focal neurlogical signs [0 or 2]: ";
my $NS = <>;
chomp $NS;
while ($NS < 0 || $NS > 2 || $NS == 1 || $NS !~ /^[0-9]+$/ || $NS eq ""){
print ("Out of range, please, enter a valid number [0 or 2]:  ");
$NS = <>;
chomp $NS; 
}
my $HIS = $onset + $D + $C + $NC + $P + $Dep + $S + $E + $H + $Stroke + $A + $NSX + $NS;
print "\n";
print "The HIS score is " . $HIS . "/18\n";
print "\n";
