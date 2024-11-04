#!/usr/bin/perl
use strict;
use warnings;

# Function to validate user input
sub get_positive_number {
    my ($prompt) = @_;
    my $input;

    while (1) {
        print "$prompt";
        $input = <STDIN>;
        chomp($input);

        # Check if input is a positive number
        if ($input =~ /^[+]?\d*\.?\d+$/ && $input > 0) {
            return $input;
        } else {
            print "Invalid input. Please enter a positive number.\n";
        }
    }
}

# Function to calculate BMI
sub calculate_bmi {
    my ($weight, $height) = @_;
    return ($weight / ($height ** 2)) * 703;
}

# Main program
print "BMI Calculator\n";

# Get validated inputs
my $weight = get_positive_number("Enter your weight in pounds: ");
my $height = get_positive_number("Enter your height in inches: ");

# Calculate BMI
my $bmi = calculate_bmi($weight, $height);

# Print result
printf "Your BMI is: %.2f\n", $bmi;
