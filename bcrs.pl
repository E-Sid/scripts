#!/usr/bin/perl

use strict;
use warnings;

sub calculate_bcrs_total_score {
    my @bcrs_items = (
        '1. Axis-I: Concentration',
        '2. Axis-II: Recent memory',
        '3. Axis-III: Past memory',
        '4. Axis-IV: Orientation',
        '5. Axis-V: Functioning and self-care'
        # Add more items as needed
    );

    my %bcrs_scores;

    # Get user input for each BCRS item
    foreach my $item (@bcrs_items) {
        my $valid_input = 0;

        while (!$valid_input) {
            print "Enter score for $item (1-7): ";
            my $score = <STDIN>;
            chomp($score);

            # Validate input
            if ($score =~ /^\d+$/ && $score >= 1 && $score <= 7) {
                @bcrs_scores{$item} = $score;
                $valid_input = 1;
            } else {
                print "Invalid input. Please, enter a number between 1 and 7.\n";
            }
        }
    }
# Add order to the hash
my @ordered_hash = qw(
        1. Axis-I: Concentration 2. Axis-II: Recent memory 3. Axis-III: Past memory 4. Axis-IV: Orientation 5. Axis-V: Functioning and self-care);


    
    # Calculate total BCRS score
    my $total_score = 0;
    foreach my $item_score (sort values %bcrs_scores) {
        $total_score += $item_score;
    }

#   return @ordered_hash, total_score => $total_score;
     return %bcrs_scores, total_score => $total_score;
}

sub save_result_to_file {
    my %scores = @_;
# added sort
    print "Enter the filename to save the result: ";
    my $filename = <STDIN>;
    chomp($filename);

    open my $fh, '>', $filename or die "Cannot open file '$filename' for writing: $!";

    print $fh "BCRS item scores:\n";
    foreach my $item (sort keys %scores) {
# foreach instead of for
        print $fh "$item: $scores{$item}\n";
    }
    print $fh "\nTotal BCRS Score: $scores{total_score}\n";

    close $fh;

    print "Result saved to $filename\n";
}

# Main program
print " \n";
print "Brief Cognitive Rating Scale (BCRS) Total Score Calculator\n";
print "===========================================================\n";

my @bcrs_scores = calculate_bcrs_total_score();

# Print the total score
print "\nBCRS item scores:\n";
for my $item (sort @bcrs_scores) {
    # added sort command
    print "$item: %bcrs_scores{$item}\n";
}
print "\nTotal BCRS score: %bcrs_scores{total_score}/35\n";

# Ask user if they want to save the result
while(1) {
print "Do you want to save the result to a file? (yes/no): ";
my $save_option = lc(<STDIN>);
chomp($save_option);

if ($save_option eq 'yes') {
    save_result_to_file(@bcrs_scores) && exit print "saved\n"
}
elsif ($save_option eq 'no') {exit print "not saved\n"
				
}
    else 
	{ print "invalid option, please, type yes or no\n"
}
}
