#!/usr/bin/perl
use strict;
use warnings;

# Function to validate input
sub validate_input {
    my ($input, $max_value) = @_;

    # Check if input is a number and within the valid range
    if ($input =~ /^\d+$/ && $input >= 0 && $input <= $max_value) {
        return 1;
    } else {
        print "Invalid input! Please enter a number between 0 and $max_value.\n";
        return 0;
    }
}

# Function to get and validate input for a CIWA item
sub get_valid_input {
    my ($prompt, $max_value) = @_;
    my $input;

    do {
        print $prompt;
        $input = <STDIN>;
        chomp($input);
    } while (!validate_input($input, $max_value));

    return $input;
}

# Define CIWA items, their respective max scores, and their order
my @ciwa_items = (
    { name => 'Nausea and Vomiting', max_score => 7 },
    { name => 'Tremors', max_score => 7 },
    { name => 'Paroxysmal Sweats', max_score => 7 },
    { name => 'Anxiety', max_score => 7 },
    { name => 'Agitation', max_score => 7 },
    { name => 'Tactile Disturbances', max_score => 7 },
    { name => 'Auditory Disturbances', max_score => 7 },
    { name => 'Visual Disturbances', max_score => 7 },
    { name => 'Headache', max_score => 7 },
    { name => 'Orientation and Clouding of Sensorium', max_score => 4 }
);

# Initialize total score
my $total_score = 0;

# Iterate over each CIWA item in the specified order
foreach my $item (@ciwa_items) {
    my $score = get_valid_input("Enter score for $item->{name} (0-$item->{max_score}): ", $item->{max_score});
    $total_score += $score;
}

# Print the total CIWA score
print "Total CIWA Score: $total_score\n";
