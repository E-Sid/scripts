#!/usr/bin/perl

# Bucks RS, Ashworth DL, Wilcock GK, and Siegfried K (1996)
sub calculate_badls_total_score {
    my @badls_items = (
        '01. Preparing food',  # Replace with BADLS item scores
        '02. Eating',
        '03. Preparing drink',
        '04. Drinking',
        '05. Dressing',
        '06. Hygiene',
        '07. Teeth',
        '08. Bath/shower',
        '09. Toilet/commode',
        '10. Transfers',
        '11. Mobility',
        '12. Orientation - time',
        '13. Orientation - space',
        '14. Communication',
        '15. Telephone',
        '16. Housework/gardening' ,
        '17. Shopping',
        '18. Finances',        # Add more items as needed
	'19. Games/hobbies',
	'20. Transport',
    );

    my %badls_scores;

    # Get user input for each BADLS item
    foreach my $item (@badls_items) {
        my $valid_input = 0;

        while (!$valid_input) {
            print "Enter score for $item [0-3]: ";
            my $score = <STDIN>;
            chomp($score);

            # Validate input
            if ($score =~ /^\d+$/ && $score >= 0 && $score <= 3) {
                $badls_scores{$item} = $score;
                $valid_input = 1;
            } else {
                print "Invalid input. Please enter a number between 0 and 3.\n";
            }
        }
    }

    # Calculate total BADLS score
    my $total_score = 0;
    foreach my $item_score (values %badls_scores) {
        $total_score += $item_score;
    }

    return $total_score;
}

# Main program
print "Bristol Activities of Daily Living Scale (BADLS) Total Score Calculator\n";
my $total_badls_score = calculate_badls_total_score();

# Print the total score
print "\nTotal BADLS Score: $total_badls_score\n";
