#!/usr/bin/perl

sub calculate_bprs_total_score {
    my @bprs_items = (
        '01. Somatic Concern',  # Replace with the actual BPRS item scores
        '02. Anxiety',
        '03. Emotional Withdrawal',
        '04. Conceptual Disorganisation',
        '05. Guilt Feelings',
        '06. Tension',
        '07. Mannerisms and Posturing',
        '08. Grandiosity',
        '09. Depressive Mood',
        '10. Hostility',
        '11. Suspiciousness',
        '12. Hallucinatory Behaviour',
        '13. Motor Retardation',
        '14. Uncooperativness',
        '15. Unusual Thought Conent',
        '16. Blunted Affect' ,
        '17. Excitement',
        '18. Disorientation',        # Add more items as needed
    );

    my %bprs_scores;

    # Get user input for each BPRS item
    foreach my $item (@bprs_items) {
        my $valid_input = 0;

        while (!$valid_input) {
            print "Enter score for $item [0-7]: ";
            my $score = <STDIN>;
            chomp($score);

            # Validate input
            if ($score =~ /^\d+$/ && $score >= 0 && $score <= 7) {
                $bprs_scores{$item} = $score;
                $valid_input = 1;
            } else {
                print "Invalid input. Please enter a number between 0 and 7.\n";
            }
        }
    }

    # Calculate total BPRS score
    my $total_score = 0;
    foreach my $item_score (values %bprs_scores) {
        $total_score += $item_score;
    }

    return $total_score;
}

# Main program
print "Brief Psychiatric Rating Scale (BPRS) Total Score Calculator\n";
my $total_bprs_score = calculate_bprs_total_score();

# Print the total score
print "\nTotal BPRS Score: $total_bprs_score\n";
