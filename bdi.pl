#!/usr/bin/perl

sub calculate_bdi_total_score {
    my @bdi_items = (
        'Sadness',
        'Pessimism',
        'Past Failure',
        'Loss of Pleasure',
        'Guilty Feelings',
        'Punishment Feelings',
        'Self-Dislike',
        'Self-Criticalness',
        'Suicidal Thoughts',
        'Crying',
        'Agitation',
        'Loss of Interest',
        'Indecisiveness',
        'Worthlessness',
        'Loss of Energy',
        'Changes in Sleep Patterns',
        'Irritability',
        'Changes in Appetite',
        'Concentration Difficulty',
        'Fatigue',
        'Loss of Interest in Sex',
        # Add more items as needed
    );

    my %bdi_scores;

    # Get user input for each BDI item
    foreach my $item (@bdi_items) {
        my $valid_input = 0;

        while (!$valid_input) {
            print "Enter score for $item (0-3): ";
            my $score = <STDIN>;
            chomp($score);

            # Validate input
            if ($score =~ /^\d+$/ && $score >= 0 && $score <= 3) {
                $bdi_scores{$item} = $score;
                $valid_input = 1;
            } else {
                print "Invalid input. Please enter a number between 0 and 3.\n";
            }
        }
    }

    # Calculate total BDI score
    my $total_score = 0;
    foreach my $item_score (values %bdi_scores) {
        $total_score += $item_score;
    }

    return $total_score;
}

# Main program
print "Beck Depression Inventory (BDI) Total Score Calculator\n";
my $total_bdi_score = calculate_bdi_total_score();

# Print the total score
print "\nTotal BDI Score: $total_bdi_score\n";
