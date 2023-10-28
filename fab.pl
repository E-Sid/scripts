#!/usr/bin/perl
use strict;
use warnings;

sub Calculate_FAB_TotalScore {
    my @fab_items = (
	'similatiries (conceptualisation)', 	 
	'lexical fluency (mental flexibility)',   	 
        'motor series (Luria) test (programming)',  	        
        'conflicting instructions (sensitivity to interference)',
	'Go-No Go (inhibitory control)',
	'prehension behaviour (environmental autonomy)',
	);
    my %fab_scores;
    # Get user input for each FAB item
    foreach my $item (@fab_items) {
	my $valid_input = 0;

	while (!$valid_input) {
	    print "Pleasem type score for: $item [0-3]: ";
	    my $score = <STDIN>;
		chomp($score);

	    # Validate input
	    if ($score =~/^\d+$/ && $score >= 0 && $score <= 3) {
		$fab_scores{$item} = $score;
		$valid_input = 1;
	    }
	    else {
		print "Invalid input. Please, type results between 0 and 3. ";
	    }
	}
    }

    # Calculate the total FAB score
    my $total_score = 0;
    foreach my $item_score (values %fab_scores) {
	$total_score += $item_score;
    }
    return $total_score;
}

# Main Programme
print "Frontal Assessment Battery (FAB) calculator\n";
print "===========================================\n";
my $total_fab_score = Calculate_FAB_TotalScore();

# Print the total score of FAB
print "\nThe total FAB score is $total_fab_score/18\n";

while (1) {
print "Do you want to save the output to file (fab.txt) [yes or no]? ";
my $ans = lc(<STDIN>);
chomp($ans);
if ($ans eq 'yes')  {	   
    my $output = 'fab.txt';
open(FH,'>', $output) or die $!;
print FH 
my $str = <<END;
The Frontal Lobe Assessment Battery Score (FAB) is $total_fab_score/18
END
# print FH $str;
close(FH);
    print "written to fab.txt\n";
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
