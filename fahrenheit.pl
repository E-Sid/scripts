#!/usr/bin/perl
use strict;
use warnings;

# Subroutine to convert Celsius to Fahrenheit
sub celsius_to_fahrenheit {
    my ($celsius) = @_;
    return ($celsius * 9 / 5) + 32;
}

# Main program
while (1) {
    print "Enter temperature in Celsius (or type 'exit' to quit): ";
    my $input = <STDIN>;
    chomp($input);

    # Exit condition
    if (lc($input) eq 'exit') {
        print "Exiting!\n";
        last;
    }

    # Validate input
    if ($input =~ /^-?\d+(\.\d+)?$/) {
        my $fahrenheit = celsius_to_fahrenheit($input);
        print "Temperature in Fahrenheit: $fahrenheit\n";
    } else {
        print "Invalid input! Please enter a valid numeric value.\n";
    }
}
