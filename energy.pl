#!/usr/bin/perl
use strict;
use warnings;

# Subroutine to validate numeric input within a range
sub get_valid_input {
    my ($prompt, $max) = @_;
    my $input;

    while (1) {
        print $prompt;
        $input = <STDIN>;
        chomp($input);

        # Validate input is numeric, positive, and within the maximum limit
        if ($input =~ /^\d+(\.\d+)?$/ && $input > 0 && $input <= $max) {
            return $input;
        } else {
            print "Invalid input. Please enter a positive numeric value not exceeding $max.\n";
        }
    }
}

# Main program
print "Calculator for Energy (Joules) from Resistance (Ohms), Charge (millicoulombs), and Current (Amperes)\n";

# Get valid resistance input (max 300 ohms)
my $resistance = get_valid_input("Please, enter resistance in ohms: ", 300);

# Get valid charge input (max 1200 mC)
my $charge_mC = get_valid_input("Please, e`nter charge in millicoulombs: ", 1200);

# Convert charge from millicoulombs to coulombs
my $charge_C = $charge_mC / 1000;

# Get valid current input (max 0.98 amperes)
my $current = get_valid_input("Please, enter current in amperes: ", 0.98);

# Calculate energy using the formula E = I^2 * R * Q
my $energy = $current**2 * $resistance * $charge_C;

# Output the result
print "Energy = $energy joules\n";
