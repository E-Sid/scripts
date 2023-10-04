#!/usr/bin/perl

use strict;
use warnings;

sub calculate_cdss_total_score {
    my @cdss_items = (
        'Depression',
        'Hopelessness',
        'Self-depreciation',
        'Guilty ideas of reference',
        'Pathological guilt',
        'Morning depression',
        'Early wakening',
        'Suicide',
        'Observed depression',
    );

    my %cdss_scores;

    # Get user input for each CDSS item
    foreach my $item (@cdss_items) {
        my $valid_input = 0;

        while (!$valid_input) {
            print "Enter score for $item (0-3): ";
            my $score = <STDIN>;
            chomp($score);

            # Validate input
            if ($score =~ /^\d+$/ && $score >= 0 && $score <= 3) {
                $cdss_scores{$item} = $score;
                $valid_input = 1;
            } else {
                print "Invalid input. Please enter a number between 0 and 3.\n";
            }
        }
    }

    # Calculate total CDSS score
    my $total_score = 0;
    foreach my $item_score (values %cdss_scores) {
        $total_score += $item_score;
    }

    return %cdss_scores, total_score => $total_score;
}

# Main program
print "Calgary Depression Scale for Schizophrenia (CDSS) Total Score Calculator\n";
my %cdss_scores = calculate_cdss_total_score();

# Print the total score
print "\nCDSS Item Scores:\n";
for my $item (keys %cdss_scores) {
    print "$item: $cdss_scores{$item}\n";
}
print "\nTotal CDSS Score: $cdss_scores{total_score}\n";
