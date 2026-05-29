
#!/usr/bin/perl

use strict;
use warnings;
use Time::HiRes qw(time);

print "Pulsometer Watch Simulator\n";
print "Count 30 heart beats.\n";
print "Press ENTER to start...\n";
<STDIN>;

my $start_time = time();

print "Counting... Press ENTER after the 30th beat.\n";
<STDIN>;

my $end_time = time();

my $elapsed = $end_time - $start_time;

my $bpm = (30 * 60) / $elapsed;

printf "\nElapsed time: %.2f seconds\n", $elapsed;
printf "Heart Rate: %.1f BPM\n", $bpm;
