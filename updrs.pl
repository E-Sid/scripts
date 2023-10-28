#!/usr/bin/perl
use strict;
use warnings;

sub Calculate_UPDRS_TotalScore {
    my @updrs_items = (
        '01. Postural tremor of the hands',
	'02. Kinetic tremor of the hand',
	'03. Facial expression',
	'04. Global spontaneity of movement',
	'05. Rigidity',
	);
    my %updrs_scores;

    # Get user input for each UPDRS item
    foreach my $item (@updrs_items) {
	my $valid_input = 0;

	while (!$valid_input) {
	    print "Please, type score for:  $item [0-4]: ";
	    my $score = <STDIN>;
	    chomp($score);

	    # Validate input
	    if ($score =~/^\d+$/ && $score >= 0 && $score <= 4) {
		$updrs_scores{$item} = $score;
		$valid_input = 1;
	    }
	    else {
		print "Invalid input. Please, type a number between 0 and 4. ";
	    }
	}
    }

    # Calculate the total UPRS score
    my $total_score = 0;
    foreach my $item_score (values %updrs_scores) {
	$total_score += $item_score;
    }
    return $total_score;
}

# Main programme
print "Assessment of Parkinsonism (5-item UPDRS) calculator\n";
print "====================================================\n";
my $total_updrs_score = Calculate_UPDRS_TotalScore();

# Print the total score of UPDRS
print "\nTotal UPDRS score: $total_updrs_score\n";

while (1) {
print "Do you want to save the output to file (updrs.txt) [yes or no]? ";
my $ans = lc(<STDIN>);
chomp($ans);
if ($ans eq 'yes')  {	   
    my $output = 'updrs.txt';
open(FH,'>', $output) or die $!;
print FH 
my $str = <<END;
The assessment of Parkinsonism (5-item UPDRS) score is $total_updrs_score
END
# print FH $str;
close(FH);
    print "written to updrs.txt\n";
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
