#!/usr/bin/perl
use strict;
use warnings;

sub Calculate_AMTS_TotalScore {
    my @amts_items = (
	'01. What is your age?',
	'02.What is the time to the nearest hour?', 	 
	'03.Give the patient an address, and ask the person to repeat it at the endof the test.', 	 
	'04. What is the year?',   	 
        '05. What is the name of this place (e.g. hospital)',  	 
        '06. Can the patient recognize two persons (the doctor, nurse, home help, etc.)?', 
        '07. What is your date of birth? (day and month sufficient)',
        '08. In what year did World War 2 end? (other dates can be used, with a preference for dates some time in the past.)',	 
        '09. Name the current President/Prime Minister/Monarch',
        '10. Count backwards from 20 down to 1',
	);
    my %amts_scores;
    # Get user input for each AMTS item
    foreach my $item (@amts_items) {
	my $valid_input = 0;

	while (!$valid_input) {
	    print "Pleasem type score for: $item [0-1]: ";
	    my $score = <STDIN>;
		chomp($score);

	    # Validate input
	    if ($score =~/^\d+$/ && $score >= 0 && $score <= 1) {
		$amts_scores{$item} = $score;
		$valid_input = 1;
	    }
	    else {
		print "Invalid input. Please, type either 0 or 1. ";
	    }
	}
    }

    # Calculate the total AMT score
    my $total_score = 0;
    foreach my $item_score (values %amts_scores) {
	$total_score += $item_score;
    }
    return $total_score;
}

# Main Programme
print "Abbreviated Mental Test Score (AMTS) calculator\n";
print "===============================================\n";
my $total_amts_score = Calculate_AMTS_TotalScore();

# Print the total score of AMTS
print "\nThe total AMTS score is $total_amts_score\n";

while (1) {
print "Do you want to save the output to file (amts.txt) [yes or no]? ";
my $ans = lc(<STDIN>);
chomp($ans);
if ($ans eq 'yes')  {	   
    my $output = 'amts.txt';
open(FH,'>', $output) or die $!;
print FH 
my $str = <<END;
The Abbreviated Mental Test Score (AMTS) is $total_amts_score
END
# print FH $str;
close(FH);
    print "written to amts.txt\n";
    last;
}	
elsif ($ans eq 'no') {
    print "not saved\n";
    last;
	}
else {
print "out of range, please answer [yes or no] ";
 }
}
