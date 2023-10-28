#!/usr/bin/perl

use strict;
use warnings;

print "CAGE Questionnaire Calculator\n";
print "=============================\n";

# Array of questions
my @questions = (
'Have you ever felt you needed to cut down on your drinking?',
'Have people annoyed you by criticizing your drinking?',
'Have you ever felt Guilty about drinking?',
'Have you ever felt you needed a drink first thing in the morning (eye-opener)',
);

# Hash to store responses
my %responses;

# Total score
my $total_score = 0;

# Validate and record each response
for my $question (@questions) {
    my $valid_response = 0;  # Flag to control the loop until a valid response is provided

    while (!$valid_response) {
        print "$question (yes/no): ";
        chomp(my $answer = lc(<STDIN>));  # Read user input and convert to lowercase

        if ($answer eq 'yes' or $answer eq 'no') {
            $responses{$question} = ($answer eq 'yes') ? 1 : 0;  # Assign 1 for yes, 0 for no
            $total_score += $responses{$question};  # Add the response to the total score
            $valid_response = 1;  # Set the flag to exit the loop
        } else {
            print "Invalid response. Please enter 'yes' or 'no'.\n";
        }
    }
}

# Print the responses and total score
print "\nResponses:\n";
for my $question (@questions) {
    my $response_value = $responses{$question};
    print "$question: $response_value\n";
}

print "The Total CAGE Questionnaire Score: $total_score\n";

while (1) {
print "Do you want to save the output to file (cage.txt) [yes or no]? ";
my $ans = lc(<STDIN>);
chomp($ans);
if ($ans eq 'yes')  {	   
    my $output = 'cage.txt';
open(FH,'>', $output) or die $!;
print FH 
my $str = <<END;
The CAGE Questionnaire Score is $total_score
END
# print FH $str;
close(FH);
    print "written to cage.txt\n";
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
