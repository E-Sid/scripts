#!/usr/bin/perl

use strict;
use warnings;

sub calculate_wsas_total_score {
    my @wsas_items = (
        'Ability to work',
        'Home management',
        'Social leisure activities',
        'Private leisure activities',
        'Ability to form and maintain close relationships',
    );

    my %wsas_scores;

    # Get user input for each WSAS item
    foreach my $item (@wsas_items) {
        my $valid_input = 0;

        while (!$valid_input) {
            print "Enter score for $item (0-8): ";
            my $score = <STDIN>;
            chomp($score);

            # Validate input
            if ($score =~ /^\d+$/ && $score >= 0 && $score <= 8) {
                $wsas_scores{$item} = $score;
                $valid_input = 1;
            } else {
                print "Invalid input. Please enter a number between 0 and 8.\n";
            }
        }
    }

    # Calculate total WSAS score
    my $total_score = 0;
    foreach my $item_score (values %wsas_scores) {
        $total_score += $item_score;
    }

    return %wsas_scores, total_score => $total_score;
}

# Main program
print "Work and Social Adjustment Scale (WSAS) Total Score Calculator\n";
my %wsas_scores = calculate_wsas_total_score();

# Print the total score
print "\nWSAS Item Scores:\n";
for my $item (keys %wsas_scores) {
    print "$item: $wsas_scores{$item}\n";
}
print "\nTotal WSAS Score: $wsas_scores{total_score}\n";
