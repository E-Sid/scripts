#!/usr/bin/perl

use strict;
use warnings;

sub calculate_bai_total_score {
    my @bai_items = (
    'Numbness or tingling',
    'Feeling hot',
    'Wobbliness in legs',
    'Unable to relax',
    'Fear of worst happening',
    'Dizzy or lightheaded',
    'Heart pounding / racing',
    'Unsteady',
    'Terrified or afraid',
    'Nervous',
    'Feeling of choking',
    'Hands trembling',
    'Shaky / unsteady',
    'Fear of losing control',
    'Difficulty in breathing',
    'Fear of dying',
    'Scared',
    'Indigestion',
    'Faint / lightheaded',
    'Face flushed',
    'Hot / cold sweats',

    );

    my %bai_scores;

    # Get user input for each BAI item
    foreach my $item (@bai_items) {
        my $valid_input = 0;

        while (!$valid_input) {
            print "Enter score for $item (0-3): ";
            my $score = <STDIN>;
            chomp($score);

            # Validate input
            if ($score =~ /^\d+$/ && $score >= 0 && $score <= 3) {
                $bai_scores{$item} = $score;
                $valid_input = 1;
            } else {
                print "Invalid input. Please enter a number between 0 and 3.\n";
            }
        }
    }

    # Calculate total BAI score
    my $total_score = 0;
    foreach my $item_score (values %bai_scores) {
        $total_score += $item_score;
    }

    return %bai_scores, total_score => $total_score;
}

# Main program
print "Beck Anxiety Inventory (BAI) Total Score Calculator\n";
my %bai_scores = calculate_bai_total_score();

# Print the total score
print "\nBAI Item Scores:\n";
for my $item (keys %bai_scores) {
    print "$item: $bai_scores{$item}\n";
}
print "\nTotal BAI Score: $bai_scores{total_score}\n";
