#!/usr/bin/perl
use strict;
use warnings;

sub get_valid_input {
    my ($prompt) = @_;
    my $input;

    while (1) {
        print $prompt;
        $input = <STDIN>;
        chomp($input);

        # Check if the input is numeric
        if ($input =~ /^\d+(\.\d+)?$/) {
            return $input;
        } else {
            print "Invalid input. Please enter a valid number.\n";
        }
    }
}

# Main program
print "Calculate Power (Watts) from Voltage (Volts) and Current (Amperes)\n";

# Get valid voltage input
my $voltage = get_valid_input("Enter voltage in volts: ");

# Get valid current input
my $current = get_valid_input("Enter current in amperes: ");

# Calculate power
my $power = $voltage * $current;

# Output the result
print "Power = $power watts\n";
