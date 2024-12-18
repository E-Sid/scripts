#!/usr/bin/perl
use strict;
use warnings;

# Define the names of the 21 HDRS items
my @items = (
    "Depressed Mood (Sadness)",
    "Feelings of Guilt",
    "Suicide",
    "Insomnia (Initial)",
    "Insomnia (Middle)",
    "Insomnia (Late)",
    "Work and Activities",
    "Retardation (Slowness of Thought and Speech, Impaired Ability to Concentrate, Decreased Motor Activity)",
    "Agitation",
    "Anxiety (Psychological)",
    "Anxiety (Somatic)",
    "Somatic Symptoms (Gastrointestinal)",
    "Somatic Symptoms (General)",
    "Genital Symptoms",
    "Hypochondriasis",
    "Loss of Weight (By Self-Report or Measured)",
    "Insight",
    "Diurnal Variation (Mood Variation During the Day)",
    "Depersonalization and Derealization",
    "Paranoid Symptoms",
    "Obsessive and Compulsive Symptoms"
);

# Define the valid score ranges for each item (all scores are 0-4, except specific items)
my @valid_ranges = (
    4, 4, 4, 2, 2, 2, 4, 4, 4, 4, 4, 2, 2, 2, 4, 2, 4, 4, 4, 4, 4
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
print "Hamilton Depression Rating Scale (HDRS-21) Scoring\n";
print "Please enter scores for each of the 21 items:\n";

my @scores;  # Array to store the scores
for my $item (1 .. 21) {
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
print "\nTotal HDRS-21 Score: $total_score\n";

# Interpretation of the score
if ($total_score <= 7) {
    print "Interpretation: Normal or No Depression\n";
} elsif ($total_score <= 17) {
    print "Interpretation: Mild Depression\n";
} elsif ($total_score <= 24) {
    print "Interpretation: Moderate Depression\n";
} else {
    print "Interpretation: Severe Depression\n";
}

# End of script
