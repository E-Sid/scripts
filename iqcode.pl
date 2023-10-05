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

    print "Please enter IQCODE-R responses for each item (1-5):\n";

    for my $item (
'1. Recognizing the faces of family and friends',
'2. Remembering the names of family and friends',
'3. Remembering things about family and friends',
'4. Remembering things that have happened recently',
'5. Recalling conversations a few days later',
'6. Forgetting what he/she wanted to say in the middle of a conversation',
'7. Remembering his/her address and telephone number',
'8. Remembering what day and month it is',
'9. Remembering where things are usually kept',
'10. Remembering where to find things which have been put in a different place from usual',
'11. Adjusting to any change in his/her day-to-day routine',
'12. Knowing how to work familiar machines around the house',
'13. Learning to use a new gadget or machine around the house',
'14. Learning new things in general',
'15. Remembering things that happened to him/her when he/she was young',
'16. Remembering things he/she learned when he/she was young',
'17. Understanding the meaning of unusual words',
'18. Understanding magazine or newspaper articles',
'19. Following a story in a book or on TV',
'20. Composing a letter to friends or for business purposes',
'21. Knowing about important historical events of the past',
'22. Making decisions on everyday matters',
'23. Handling money for shopping',
'24. Handling financial matters',
'25. Handling other everyday arithmetic problems',
'26. Using his/her intelligence to understand what is going on and to reason things through',
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
    print "Total IQCODE-R Score: $total_score\n";
}

# Run the main routine
main();
