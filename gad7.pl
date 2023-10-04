#!/usr/bin/perl

use strict;
use warnings;

sub calculate_gad7_total_score {
    my @gad7_items = (
        'Feeling nervous, anxious, or on edge',
        'Not being able to stop or control worrying',
        'Worrying too much about different things',
        'Trouble relaxing',
        'Being so restless that it is hard to sit still',
        'Becoming easily annoyed or irritable',
        'Feeling afraid as if something awful might happen',
    );

    my %gad7_scores;

    # Get user input for each GAD-7 item
    foreach my $item (@gad7_items) {
        my $valid_input = 0;

        while (!$valid_input) {
            print "Enter score for $item (0-3): ";
            my $score = <STDIN>;
            chomp($score);

            # Validate input
            if ($score =~ /^\d+$/ && $score >= 0 && $score <= 3) {
                $gad7_scores{$item} = $score;
                $valid_input = 1;
            } else {
                print "Invalid input. Please enter a number between 0 and 3.\n";
            }
        }
    }

    # Calculate total GAD-7 score
    my $total_score = 0;
    foreach my $item_score (values %gad7_scores) {
        $total_score += $item_score;
    }

    return %gad7_scores, total_score => $total_score;
}

# Main program
print "Generalized Anxiety Disorder 7 (GAD-7) Total Score Calculator\n";
my %gad7_scores = calculate_gad7_total_score();

# Print the total score
print "\nGAD-7 Item Scores:\n";
for my $item (keys %gad7_scores) {
    print "$item: $gad7_scores{$item}\n";
}
print "\nTotal GAD-7 Score: $gad7_scores{total_score}\n";
