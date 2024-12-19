#!/usr/bin/perl
use strict;
use warnings;

# Function to get valid numeric input from the user
sub get_valid_input {
    my ($prompt, $min) = @_;
    my $value;

    while (1) {
        print $prompt;
        chomp($value = <STDIN>);

        # Check if the input is a valid positive number
        if ($value =~ /^\d+(\.\d+)?$/ && $value >= $min) {
            return $value;  # Valid input
        } else {
            print "Invalid input! Please enter a number greater than or equal to $min.\n";
        }
    }
}

# Introduction
print "Electrical Energy Calculator\n";
print "This program calculates electrical energy in joules using the formula: Energy (J) = Power (W) × Time (s).\n";
print "----------------------------------------\n";

# Get valid inputs for power and time
my $volt = get_valid_input("Enter power in voltage (V): ", 0);
my $current = get_valid_input("Enter current in amperes (I): ", 0);
my $time = get_valid_input("Enter time in seconds (s): ", 0);

# Calculate energy
my $energy = $volt * $current * $time;
my $power = $volt * $current;

# Display the result
print "----------------------------------------\n";
print "Power (W): $power\n";
print "Energy (J): $energy\n";
print "----------------------------------------\n";
