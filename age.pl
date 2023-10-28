#!/usr/bin/perl

use strict;
use warnings;

sub get_valid_input {
    my ($prompt, $validation_pattern) = @_;

    while (1) {
        print $prompt;
        chomp(my $input = <STDIN>);

        if ($input =~ /$validation_pattern/) {
            return $input;
        } else {
            print "Invalid input. Please enter a valid value.\n";
        }
    }
}

sub calculate_age {
    my ($birth_year, $current_year) = @_;
    return $current_year - $birth_year;
}

# Data validation patterns
my $year_pattern = qr/^\d{4}$/;

# Get birth year from user
my $birth_year = get_valid_input("Please, enter year of birth (YYYY): ", $year_pattern);

# Get current year
my $current_year = (localtime)[5] + 1900;

# Calculate age
my $age = calculate_age($birth_year, $current_year);

# Validate age to ensure it's not zero or less
while ($age <= 0) {
    print "Invalid age. Age cannot be zero or less.\n";
    $birth_year = get_valid_input("Enter your birth year (YYYY): ", $year_pattern);
    $age = calculate_age($birth_year, $current_year);
}

# Print the result
print "The age is: $age years\n";
