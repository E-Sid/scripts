#!/usr/bin/perl
use strict;
use warnings;

# Define the names of the 7 HDRS items
my @items = (
    "Depressed Mood (Sadness)",
    "Feelings of Guilt",
    "Interest pleasue, levels of activity",
    "Anxiety (Psychological)",
    "Anxiety (Physiological)",
    "Energy levels(somatic symptoms)",
    "Suicide"
);

# Define the valid score ranges for each item (all scores are 0-4, except specific items)
my @valid_ranges = (
    4, 4, 4, 4, 4, 2, 4
);

# Subroutine to validate input for a given item
sub validate_input {
    my ($item, $value) = @_;
    if ($value =~ /^\d+$/ && $value >= 0 && $value <= $valid_ranges[$item - 1]) {
        return 1;  # Input is valid
    } else {
        return 0;  # Input is invalid
    }
}

# Subroutine to calculate the total HDRS-21 score
sub calculate_score {
    my @scores = @_;
    my $total_score = 0;
    $total_score += $_ for @scores;
    return $total_score;
}

# Main script
print "Hamilton Depression Rating Scale (HDRS-7) Scoring\n";
print "Please enter scores for each of the 7 items:\n";

my @scores;  # Array to store the scores
for my $item (1 .. 7) {
    my $score;
    while (1) {
        # Display the item name and valid range
        print "Item $item - $items[$item - 1] (0-$valid_ranges[$item - 1]): ";
        $score = <STDIN>;
        chomp($score);

        # Validate the input
        if (validate_input($item, $score)) {
            push @scores, $score;
            last;  # Exit the loop for this item
        } else {
            print "Invalid input! Please enter a number between 0 and $valid_ranges[$item - 1].\n";
        }
    }
}

# Calculate and display the total score
my $total_score = calculate_score(@scores);
print "\nTotal HDRS-17 Score: $total_score\n";

# Interpretation of the score
if ($total_score <= 4) {
    print "Interpretation: Normal or No Depression\n";
} elsif ($total_score <= 12) {
    print "Interpretation: Mild Depression\n";
} elsif ($total_score <= 20) {
    print "Interpretation: Moderate Depression\n";
} else {
    print "Interpretation: Severe Depression\n";
}

# End of script