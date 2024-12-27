#!/usr/bin/perl
use strict;
use warnings;

# Subroutine to validate numeric input
sub get_valid_input {
    my ($prompt) = @_;
    my $input;

    while (1) {
        print $prompt;
        $input = <STDIN>;
        chomp($input);

        # Validate that the input is numeric and positive
        if ($input =~ /^\d+(\.\d+)?$/ && $input > 0) {
            return $input;
        } else {
            print "Invalid input. Please enter a positive numeric value.\n";
        }
    }
}

# Main program
print "Calculate Energy (Joules) from Resistance (Ohms), Charge (millicoulombs), and Current (Amperes)\n";

# Get valid resistance input
my $resistance = get_valid_input("Enter resistance in ohms: ");

# Get valid charge input
my $charge_mC = get_valid_input("Enter charge in millicoulombs: ");

# Convert charge from millicoulombs to coulombs
my $charge_C = $charge_mC / 1000;

# Get valid current input
my $current = get_valid_input("Enter current in amperes: ");

# Calculate energy using the formula E = I^2 * R * Q
# Q represents the time equivalent (in seconds) for the given charge
my $energy = $current**2 * $resistance * $charge_C;

# Output the result
print "Energy = $energy joules\n";
