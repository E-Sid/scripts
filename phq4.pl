#!/usr/bin/perl

use strict;
use warnings;

sub calculate_phq9_total_score {
    my @phq9_items = (
        'Feeling nervous, anxious or on edge',
	'Not being able to stop or control worrying',
	'Feeling fown, depressed or hopeless',
	'Little interest or pleasure in doing things',
       
    );

    my %phq9_scores;

    # Get user input for each PHQ-9 item
    foreach my $item (@phq9_items) {
        my $valid_input = 0;

        while (!$valid_input) {
            print "Enter score for $item (0-3): ";
            my $score = <STDIN>;
            chomp($score);

            # Validate input
            if ($score =~ /^\d+$/ && $score >= 0 && $score <= 3) {
                $phq9_scores{$item} = $score;
                $valid_input = 1;
            } else {
                print "Invalid input. Please enter a number between 0 and 3.\n";
            }
        }
    }

    # Calculate total PHQ-9 score
    my $total_score = 0;
    foreach my $item_score (values %phq9_scores) {
        $total_score += $item_score;
    }

    return %phq9_scores, total_score => $total_score;
}

# Main program
print "Patient Health Questionnaire-4 (PHQ-4) Total Score Calculator\n";
my %phq9_scores = calculate_phq9_total_score();

# Print the total score
print "\nPHQ-4 Item Scores:\n";
for my $item (keys %phq9_scores) {
    print "$item: $phq9_scores{$item}\n";
}
print "\nTotal PHQ-4 Score: $phq9_scores{total_score}/12\n";
