
#!/usr/bin/perl

use strict;
use warnings;
use Time::HiRes qw(time);

print "15-Pulse Pulsometer Simulator\n";
print "Press ENTER to start counting...\n";
<STDIN>;

my $start_time = time();

print "Count 15 heart beats.\n";
print "Press ENTER on the 15th beat...\n";
<STDIN>;

my $end_time = time();

my $elapsed = $end_time - $start_time;

my $bpm = (15 * 60) / $elapsed;

printf "\nElapsed time: %.2f seconds\n", $elapsed;
printf "Heart Rate: %.1f BPM\n", $bpm;
