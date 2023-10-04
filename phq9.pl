#!/usr/bin/perl

use strict;
use warnings;

sub calculate_phq9_total_score {
    my @phq9_items = (
        'Little interest or pleasure in doing things',
        'Feeling down, depressed, or hopeless',
        'Trouble falling or staying asleep, or sleeping too much',
        'Feeling tired or having little energy',
        'Poor appetite or overeating',
        'Feeling bad about yourself — or that you are a failure or have let yourself or your family down',
        'Trouble concentrating on things, such as reading the newspaper or watching television',
        'Moving or speaking so slowly that other people could have noticed, or the opposite — being so fidgety or restless that you have been moving around a lot more than usual',
        'Thoughts that you would be better off dead, or of hurting yourself',
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
print "Patient Health Questionnaire-9 (PHQ-9) Total Score Calculator\n";
my %phq9_scores = calculate_phq9_total_score();

# Print the total score
print "\nPHQ-9 Item Scores:\n";
for my $item (keys %phq9_scores) {
    print "$item: $phq9_scores{$item}\n";
}
print "\nTotal PHQ-9 Score: $phq9_scores{total_score}\n";
