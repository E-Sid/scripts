#!/usr/bin/perl

sub calculate_audit_total_score {
    my @audit_items = (
        'How often do you have a drink containing alcohol?',
        'How many drinks containing alcohol do you have on a typical day when you are drinking?',
        'How often do you have six or more drinks on one occasion?',
        'How often during the last year have you found that you were not able to stop drinking once you had started?',
        'How often during the last year have you failed to do what was normally expected from you because of drinking?',
        'How often during the last year have you needed a first drink in the morning to get yourself going after a heavy drinking session?',
        'How often during the last year have you had a feeling of guilt or remorse after drinking?',
        'Have you ever been unable to remember what happened the night before because you had been drinking?',
        'Has a relative or friend or a doctor or another health worker been concerned about your drinking or suggested you cut down?',
        # Add more items as needed
    );

    my %audit_scores;

    # Get user input for each AUDIT item
    foreach my $item (@audit_items) {
        my $valid_input = 0;

        while (!$valid_input) {
            print "Enter score for $item (0-4): ";
            my $score = <STDIN>;
            chomp($score);

            # Validate input
            if ($score =~ /^\d+$/ && $score >= 0 && $score <= 4) {
                $audit_scores{$item} = $score;
                $valid_input = 1;
            } else {
                print "Invalid input. Please enter a number between 0 and 4.\n";
            }
        }
    }

    # Calculate total AUDIT score
    my $total_score = 0;
    foreach my $item_score (values %audit_scores) {
        $total_score += $item_score;
    }

    return $total_score;
}

# Main program
print "Alcohol Use Disorders Identification Test (AUDIT) Total Score Calculator\n";
my $total_audit_score = calculate_audit_total_score();

# Print the total score
print "\nTotal AUDIT Score: $total_audit_score\n";
