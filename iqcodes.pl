#!/usr/bin/perl
use strict;
use warnings;

# Function to validate and calculate score for each IQCODE-R item
sub calculate_score {
    my ($item, $response) = @_;

    unless ($response =~ /^[1-5]$/) {
        die "Error: Invalid response for item $item: $response\n";
    }

    return $response;
}

# Main routine
sub main {
    my @scores;

    print "Please enter IQCODE-Short responses for each item (1-5):\n";

    for my $item (
'1. Remembering things about family and friends',
'2. Remembering things that have happened recently',
'3. Recalling conversations a few days later',
'4. Remembering his/her address and telephone number',
'5. Remembering what day and month it is',
'6. Remembering where things are usually kept',
'7. Remembering where to find things which have been put in a different place from usual',
'8. Knowing how to work familiar machines around the house',
'9. Learning to use a new gadget or machine around the house',
'10. Learning new things in general',
'11. Following a story in a book or on TV',
'12. Making decisions on everyday matters',
'13. Handling money for shopping',
'14. Handling financial matters',
'15. Handling other everyday arithmetic problems',
'16. Using his/her intelligence to understand what is going on and to reason things through',
) {
        my $response;
        my $valid_input = 0;

        while (!$valid_input) {
            print "Item $item response: ";
            $response = <STDIN>;
            chomp $response;

            if ($response =~ /^[1-5]$/) {
                $valid_input = 1;
            } else {
                print "Invalid input. Please enter a number between 1 and 5.\n";
            }
        }

        push @scores, calculate_score($item, $response);
    }

    my $total_score = 0;
    $total_score += $_ for @scores;

    print "Individual scores: ", join(", ", @scores), "\n";
    print "Total IQCODE-Short Score: $total_score\n";
}

# Run the main routine
main();
