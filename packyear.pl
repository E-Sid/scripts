#!/usr/bin/perl
use strict;
use warnings;

# Subroutine to calculate pack years
sub calculate_pack_years {
    my ($cigarettes_per_day, $years_smoked) = @_;
    my $packs_per_day = $cigarettes_per_day / 20; # 20 cigarettes in a pack
    return $packs_per_day * $years_smoked;
}

# Main program
while (1) {
    print "\nPack Years Calculator\n";
    print "----------------------\n";

    # Get cigarettes per day
    my $cigarettes_per_day;
    while (1) {
        print "Please, enter the number of cigarettes smoked per day (or type 'exit' to quit): ";
        $cigarettes_per_day = <STDIN>;
        chomp($cigarettes_per_day);
        if (lc($cigarettes_per_day) eq 'exit') {
            print "Exiting!\n";
            exit;
        }
        if ($cigarettes_per_day =~ /^\d+(\.\d+)?$/ && $cigarettes_per_day > 0) {
            last;
        } else {
            print "Invalid input! Please enter a positive number.\n";
        }
    }

    # Get years smoked
    my $years_smoked;
    while (1) {
        print "Please, enter the number of years smoked: ";
        $years_smoked = <STDIN>;
        chomp($years_smoked);
        if ($years_smoked =~ /^\d+(\.\d+)?$/ && $years_smoked > 0) {
            last;
        } else {
            print "Invalid input! Please, enter a positive number.\n";
        }
    }

    # Calculate pack years
    my $pack_years = calculate_pack_years($cigarettes_per_day, $years_smoked);
    print "The pack years are: $pack_years pack years.\n";
}
