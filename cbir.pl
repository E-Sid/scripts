#!/usr/bin/perl

use strict;
use warnings;

# CBI score items, subroutine (pronoun they/their/them added in square brackets)
sub calculate_cbi_total_score {
    my @cbi_items = (
#        'Memory: 1. Forgets to pass on phone messages',
        'Memory: 2. Has poor day-to-day memory (e.g. about conversations, trips etc.)',
	'Memory: 3. Asks the same question over and over again',
	'Memory: 4. Loses or misplaces things',
	'Memory: 5. Forgets the names of familiar people',
	'Memory: 6. Forgets the names of objects and things',
#	'Orientation & attention:  7. Has difficulty completing activities once started',
	'Orientation & attention:  8. Shows poor concentration when reading or watching television',
	'Orientation & attention:  9. Forgets what day it is',
#	'Orientation & attention: 10. Forgets what time of day it is',
#	'Orientation & attention: 11. Gets the present mixed up with past situations',
	'Orientation & attention: 12. Becomes confused or muddled in unusual surroundings',
#	'Orientation & attention: 13. Gets lost inside the house',
	'Everyday Skills: 14. Has difficulties using electrical appliances (e.g. TV, radio, cooker, washing machine)',
#	'Everyday skills: 15. Has problems preparing meals',
	'Everyday skills: 16. Has difficulties writing (letters, Christmas cards, lists etc.)',
	'Everyday skills: 17. Has difficulties using the telephone',
	'Everyday skills: 18. Has difficulties making a hot drink (e.g. tea/coffee)',
#	'Everyday skills: 19. Has difficulties shopping',
	'Everyday skills: 20. Has problems handling money or paying bills',
#	'Everyday skills: 21. Has difficulties with household chores',
#	'Self care: 22. Has difficulties travelling to places by self (either by driving or on public transportation',
	'Self care: 23. Has difficulties grooming self (e.g. shaving or putting on make-up)',
	'Self care: 24. Has difficulties dressing self',
	'Self care: 25. Has problems feeding self without assistance',
	'Self care: 26. Has problems bathing or showering self',
#	'Self care: 27. Has difficulties using toilet by self',
#	'Self care: 28. Wets self with urine',
	'Mood: 29. Cries',
	'Mood: 30. Appears sad or depressed',
#	'Mood: 31. Is anxious or fearful',
	'Mood: 32. Is very restless or agitated',
	'Mood: 33. Is very irritable',
#	'Mood: 34. Has rapid shifts between different emotions',
#	'Mood: 35. Appears inappropriately cheerful',
#	'Mood: 36. Talks big e.g. claims more welath than true',
	'Mood: 37. Finds humour or laughs at things others do not find funny',
#	'Beliefs: 38. Is suspicious or accusative',
	'Beliefs: 39. Sees things that are not really there (visual hallucinations)',
	'Beliefs: 40. Hears voices that are not really there (auditory hallucinations)',
	'Beliefs: 41. Has odd or bizarre ideas that cannot be true',
#	'Beliefs: 42. Believs that additional people are living in the house',
#	'Beliefs: 43 Thinks that a family member has been replaced by an impostor',
#	'Beliefs: 44. Thinks that people on the TV are actually in the room',
	'Challenging behaviour: 45. Has temper outbursts',
#	'Challenging behaviour: 46. Threatens to harm self/others or property',
	'Challenging behaviour: 47. Is uncooperative when asked to do something',
#	'Challenging behaviour: 48. Disturbs others by shouting or yelling',
	'Disinhibition: 49. Shows socially embarassing behaviour',
	'Disinhibition: 50. Makes tactless or suggestive remarks',
#	'Disnihibition: 51. Displays suggestive behaviour (e.g. touching inappropriately)',
#	'Disinhibition: 52. Acts impulsively without thinking',
#	'Disnihibition: 53. Talks to total strangers as if they know them',
	'Eating habits: 54. Prefers sweet foods more than before',
	'Eating habits: 55. Wants to eat the same foods repeatedly',
	'Eating habits: 56. Her/his appetite is greater, s/he/[they] eat[s] more than before',
	'Eating habits: 57. Table manners are declining eg stuffing food into mouth',
#	'Eating Habits: 58. Eats non-edible foodstuffs or things not normally eaten',
	'Sleep: 59. Sleep is disturbed at night',
	'Sleep: 60. Sleeps more by day than before (cat naps etc.)',
	'Stereotypic & motor behaviours: 61. Is rigid in her/his/[their] ideas and opinions',
	'Stereotypic & motor behaviours: 62. Develops routines from which s/he/[they] cannot easily be discouraged eg wanting to eat or go for walks at fixed times',
#	'Stereotypic & motor behaviours: 63. Exhibits rituals eg takes the same route across the kitchen, only steps on certain floor tiles',
	'Stereotypic & motor behaviours: 64. Clock watches or appears pre-occupied with time',
#	'Sterotypic & motor behaviours: 65. Appears pre-occupied with counting, numbers, puzzles or jigsaws',
#	'Stereotypic & motor behaviours: 66. Takes, hides or heards things, or packs away special items',
	'Stereotypic & motor behaviours: 67. Repeatedly uses the same expression or catch phrase',
#	'Stereotypic & motor mehaviours: 68. S/he/[they] immediately repeat[s] words and sentences that you or others have just said (echolalia)',
#	'Stereotypic & motor behaviours: 69. Paces around without purpose',
#	'Stereotypic & motor behaviours: 70. Rummages around excessively',
#	'Stereotypic & motor behaviours: 71. S/he/[they] fidget[s] (eg bounces, taps feet/hands) a lot',
	'Motivation: 72. Shows less enthusiasm for her/his/[their] usual interests',
	'Motivation: 73. Shows little interest in doing new things',
#	'Motivation: 74. Requires nagging to start activities and chores',
#	'Motivation: 75. Shows no interest in attending social functions',
	'Motivation: 76. Fails to maintain motivation to keep in contact with friends and family',
#	'Motivation: 77. Withdraws from others, fails to start conversations',
	'Motivation: 78. Appears indifferent to the worries and concerns of family members',
	'Motivation: 79. Shows reduced affection',
#	'Insight/Awareness: 80. Shows insight into changes in behaviour and personality (if appropriate)',
#	'Insight/Awareness: 81. Shows insight into memory problems'
	# Add more items as needed
    );

    my %cbi_scores;

    # Get user input for each CBI item
    foreach my $item (@cbi_items) {
        my $valid_input = 0;

        while (!$valid_input) {
            print "Enter score for $item [0-4): ";
            my $score = <STDIN>;
            chomp($score);

            # Validate input
            if ($score =~ /^\d+$/ && $score >= 0 && $score <= 4) {
                $cbi_scores{$item} = $score;
                $valid_input = 1;
            } else {
                print "Invalid input. Please enter a number between 0 and 4.\n";
            }
        }
    }

    # Calculate total CBI score
    my $total_score = 0;
    foreach my $item_score (values %cbi_scores) {
        $total_score += $item_score;
    }

    return %cbi_scores, total_score => $total_score;
}

sub save_result_to_file {
    my %scores = @_;

    print "Enter the filename to save the result: ";
    my $filename = <STDIN>;
    chomp($filename);

    open my $fh, '>', $filename or die "Cannot open file '$filename' for writing: $!";

    print $fh "CBI item scores:\n";
    for my $item (keys %scores) {
        print $fh "$item: $scores{$item}\n";
    }
    print $fh "\nTotal CBI score: $scores{total_score}\n";

    close $fh;

    print "Result saved to $filename\n";
}

# Main program
print "Cambridge Behavioural Inventory score calculator\n";
print "==================================================\n";
print "Please, answer the questions about how often does the patient show the problem? ie frequency of behaviours over the past month:\n";
    print "0 = never\n";
    print "1 = a few times per month\n";
    print "2 = a few times per week\n";
    print "3 = daily\n";
    print "4 = constantly\n";
print "=======================================================================\n";



my %cbi_scores = calculate_cbi_total_score();

# Print the total score
# print "\nCBI item scores:\n";
# for my $item (keys %cbi_scores)  { 
#    print "$item: $cbi_scores{$item}\n";
# }
print "\nTotal CBI score: $cbi_scores{total_score} /176\n";

# Ask user if they want to save the result
while (1){
print "Do you want to save the result to a file? (yes/no): ";
my $save_option = lc(<STDIN>);
chomp($save_option);
if ($save_option eq 'yes') {
    save_result_to_file(%cbi_scores);
}
elsif ($save_option eq 'no') {exit print "not saved\n"
				
}
    else 
	{ print "invalid option, please answer yes or no\n"
}
}
