#!/usr/bin/perl

use strict;
use warnings;

sub calculate_hama_total_score {
    my @hama_items = (
        'Anxious mood',
        'Tension',
        'Fears',
        'Insomnia',
        'Intellectual (cognitive) symptoms',
        'Depressed mood',
        'Somatic (muscular) symptoms',
        'Somatic (sensory) symptoms',
        'Cardiovascular symptoms',
        'Respiratory symptoms',
        'Gastrointestinal symptoms',
        'Genitourinary symptoms',
        'Autonomic symptoms',
        'Behavior at interview',
    );

    my %hama_scores;

    # Get user input for each HAM-A item
    foreach my $item (@hama_items) {
        my $valid_input = 0;

        while (!$valid_input) {
            print "Enter score for $item (0-4): ";
            my $score = <STDIN>;
            chomp($score);

            # Validate input
            if ($score =~ /^\d+$/ && $score >= 0 && $score <= 4) {
                $hama_scores{$item} = $score;
                $valid_input = 1;
            } else {
                print "Invalid input. Please enter a number between 0 and 4.\n";
            }
        }
    }

    # Calculate total HAM-A score
    my $total_score = 0;
    foreach my $item_score (values %hama_scores) {
        $total_score += $item_score;
    }

    return %hama_scores, total_score => $total_score;
}

# Main program
print "Hamilton Anxiety Rating Scale (HAM-A) Total Score Calculator\n";
my %hama_scores = calculate_hama_total_score();

# Print the total score
print "\nHAM-A Item Scores:\n";
for my $item (keys %hama_scores) {
    print "$item: $hama_scores{$item}\n";
}
print "\nTotal HAM-A Score: $hama_scores{total_score}\n";
