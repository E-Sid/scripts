#!/usr/bin/perl

use strict;
use warnings;

sub calculate_honos_total_score {
    my @honos_items = (
        'Problems with disruptive, antisocial or aggressive behaviour',
        'Problems with overactivity, attention or concentration',
        'Non-accidental self injury',
        'Problems with alcohol, substance/solvent misuse',
        'Problems with scholastic or language skills',
        'Physical illness or disability problems',
        'Problems associated with hallucinations, delusions or abnormal perceptions',
        'Problems with non-organic somatic symptoms',
        'Problems with emotional and related symptoms',
        'Problems with peer relationships',
        'Problems with self-care and independence',
        'Problems with family life and relationships',
	'Poor school attendance',
	'Problems with knowledge or understanding about the nature of the child\'s/adolescent\'s difficulties (in the previous two weeks)',
	'Problems with lack of information about services or management of the child\'s/adolescent\'s difficulties',
    
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
print "Health of the Nation Outcome Scales - Child and Adolescent Mental Health (HoNOSCA) Total Score Calculator\n";
my %honos_scores = calculate_honos_total_score();

# Print the total score
print "\nHoNOSCA Item Scores:\n";
for my $item (keys %honos_scores) {
    print "$item: $honos_scores{$item}\n";
}
print "\nTotal HoNOSCA Score: $honos_scores{total_score}\n";

# Saving output
while (1) {
print "Do you want to save the output to file (HoNOSCA.txt) [yes/no]? ";
my $ans = lc(<STDIN>);
chomp($ans);
if ($ans eq 'yes')  {	   
    my $output = 'HoNOSCA.txt';
open(FH,'>', $output) or die $!;
print FH 
my $str = <<END;
The total score for HoNOSCA is $honos_scores{total_score}
END
# print FH $str;
close(FH);
    print "written to HoNOSCA.txt\n";
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
