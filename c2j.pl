#!/usr/bin/perl
use strict;
use warnings;

# Conversion factor
my $cal_to_joule = 4.184;

# Function to convert calories to joules
sub convert_calories_to_joules {
    my ($calories) = @_;
    return $calories * $cal_to_joule;
}

# Function to validate input
sub is_valid_number {
    my ($input) = @_;
    return $input =~ /^-?\d+\.?\d*$/;
}

# Main program
my $input;
while (1) {
    print "Enter the number of calories to convert to joules: ";
    chomp($input = <STDIN>);

    # Validate input
    if (is_valid_number($input)) {
        last;
    } else {
        print "Invalid input. Please enter a valid number.\n";
    }
}

# Convert and display result
my $joules = convert_calories_to_joules($input);
printf "%.2f calories is equal to %.2f joules\n", $input, $joules;
