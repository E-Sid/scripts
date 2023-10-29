#!/usr/bin/perl

use strict;
use warnings;

sub calculate_honos_total_score {
    my @honos_items = (
        'Overactive, aggressive, disruptive or agitated behaviour',
        'Non-accidental self-injury',
        'Problem drinking or drug-taking',
        'Cognitive problems',
        'Physical illness or disability problems',
        'Problems associated with hallucinations and delusions',
        'Problems with depressed mood',
        'Other mental and behavioural problems',
        'Problems with relationships',
        'Problems with activities of daily living',
        'Problems with living conditions',
        'Problems with occupation and activities',
    
    );

    my %honos_scores;

    # Get user input for each HoNOS item
    foreach my $item (@honos_items) {
        my $valid_input = 0;

        while (!$valid_input) {
            print "Enter score for $item (0-4): ";
            my $score = <STDIN>;
            chomp($score);

            # Validate input
            if ($score =~ /^\d+$/ && $score >= 0 && $score <= 4) {
                $honos_scores{$item} = $score;
                $valid_input = 1;
            } else {
                print "Invalid input. Please enter a number between 0 and 4.\n";
            }
        }
    }

    # Calculate total HoNOS score
    my $total_score = 0;
    foreach my $item_score (values %honos_scores) {
        $total_score += $item_score;
    }

    return %honos_scores, total_score => $total_score;
}

# Main program
print "Health of the Nation Outcome Scales (HoNOS65+) Total Score Calculator\n";
my %honos_scores = calculate_honos_total_score();

# Print the total score
print "\nHoNOS65+ Item Scores:\n";
for my $item (keys %honos_scores) {
    print "$item: $honos_scores{$item}\n";
}
print "\nTotal HoNOS65+ Score: $honos_scores{total_score}\n";

# Saving output
while (1) {
print "Do you want to save the output to file (HoNOS65.txt) [yes/no]? ";
my $ans = lc(<STDIN>);
chomp($ans);
if ($ans eq 'yes')  {	   
    my $output = 'HoNOS65.txt';
open(FH,'>', $output) or die $!;
print FH 
my $str = <<END;
The total score for HoNOS65+ is $honos_scores{total_score}
END
# print FH $str;
close(FH);
    print "written to HoNOS65.txt\n";
    last;
}	
elsif ($ans eq 'no') {
    print "Not saved\n";
    last;
	}
else {
print "out of range, please answer [yes or no] ";
 }
}
