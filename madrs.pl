#!/usr/bin/perl

use strict;
use warnings;

sub calculate_madrs_total_score {
    my @madrs_items = (
        'Apparent Sadness',
        'Reported Sadness',
        'Inner Tension',
        'Reduced Sleep',
        'Reduced Appetite',
        'Concentration Difficulties',
        'Lassitude',
        'Inability to Feel',
        'Pessimistic Thoughts',
        'Suicidal Thoughts',
        # Add more items as needed
    );

    my %madrs_scores;

    # Get user input for each MADRS item
    foreach my $item (@madrs_items) {
        my $valid_input = 0;

        while (!$valid_input) {
            print "Enter score for $item (0-6): ";
            my $score = <STDIN>;
            chomp($score);

            # Validate input
            if ($score =~ /^\d+$/ && $score >= 0 && $score <= 6) {
                $madrs_scores{$item} = $score;
                $valid_input = 1;
            } else {
                print "Invalid input. Please enter a number between 0 and 6.\n";
            }
        }
    }

    # Calculate total MADRS score
    my $total_score = 0;
    foreach my $item_score (values %madrs_scores) {
        $total_score += $item_score;
    }

    return %madrs_scores, total_score => $total_score;
}

sub save_result_to_file {
    my %scores = @_;

    print "Enter the filename to save the result: ";
    my $filename = <STDIN>;
    chomp($filename);

    open my $fh, '>', $filename or die "Cannot open file '$filename' for writing: $!";

    print $fh "MADRS Item Scores:\n";
    for my $item (keys %scores) {
        print $fh "$item: $scores{$item}\n";
    }
    print $fh "\nTotal MADRS Score: $scores{total_score}\n";

    close $fh;

    print "Result saved to $filename\n";
}

# Main program
print "Montgomery-Åsberg Depression Rating Scale (MADRS) Total Score Calculator\n";
my %madrs_scores = calculate_madrs_total_score();

# Print the total score
print "\nMADRS Item Scores:\n";
for my $item (keys %madrs_scores) {
    print "$item: $madrs_scores{$item}\n";
}
print "\nTotal MADRS Score: $madrs_scores{total_score}\n";

# Ask user if they want to save the result
print "Do you want to save the result to a file? (yes/no): ";
my $save_option = lc(<STDIN>);
chomp($save_option);

if ($save_option eq 'yes') {
    save_result_to_file(%madrs_scores);
}
