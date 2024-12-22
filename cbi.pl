#!/usr/bin/perl

use strict;
use warnings;

# CBI score items, subroutine (pronoun they/their/them added in square brackets)
sub calculate_cbi_total_score {
    my @cbi_items = (
        '01. Memory: Forgets to pass on phone messages',
        '02. Memory: Has poor day-to-day memory (e.g. about conversations, trips etc.)',
	'03. Memory: Asks the same question over and over again',
	'04. Memory: Loses or misplaces things',
	'05. Memory: Forgets the names of familiar people',
	'06. Memory: Forgets the names of objects and things',
	'07. Orientation & attention: Has difficulty completing activities once started',
	'08. Orientation & attention:Shows poor concentration when reading or watching television',
	'09. Orientation & attention: Forgets what day it is',
	'10. Orientation & attention: Forgets what time of day it is',
	'11. Orientation & attention: Gets the present mixed up with past situations',
	'12. Orientation & attention: Becomes confused or muddled in unusual surroundings',
	'13. Orientation & attention: Gets lost inside the house',
	'14. Everyday Skills: Has difficulties using electrical appliances (e.g. TV, radio, cooker, washing machine)',
	'15. Everyday skills: Has problems preparing meals',
	'16. Everyday skills: Has difficulties writing (letters, Christmas cards, lists etc.)',
	'17. Everyday skills: Has difficulties using the telephone',
	'18. Everyday skills: Has difficulties making a hot drink (e.g. tea/coffee)',
	'19. Everyday skills: Has difficulties shopping',
	'20. Everyday skills: Has problems handling money or paying bills',
	'21. Everyday skills: Has difficulties with household chores',
	'22. Self care: Has difficulties travelling to places by self (either by driving or on public transportation',
	'23. Self care: Has difficulties grooming self (e.g. shaving or putting on make-up)',
	'24. Self care: Has difficulties dressing self',
	'25. Self care: Has problems feeding self without assistance',
	'26. Self care: Has problems bathing or showering self',
	'27. Self care: Has difficulties using toilet by self',
	'28. Self care: Wets self with urine',
	'29. Mood: Cries',
	'30. Mood: Appears sad or depressed',
	'31. Mood: Is anxious or fearful',
	'32. Mood: Is very restless or agitated',
	'33. Mood: Is very irritable',
	'34. Mood: Has rapid shifts between different emotions',
	'35. Mood: Appears inappropriately cheerful',
	'36. Mood: Talks big e.g. claims more welath than true',
	'37. Mood: Finds humour or laughs at things others do not find funny',
	'38. Beliefs: Is suspicious or accusative',
	'39. Beliefs: Sees things that are not really there (visual hallucinations)',
	'40. Beliefs: Hears voices that are not really there (auditory hallucinations)',
	'41. Beliefs: Has odd or bizarre ideas that cannot be true',
	'42. Beliefs: Believs that additional people are living in the house',
	'43. Beliefs: Thinks that a family member has been replaced by an impostor',
	'44. Beliefs: Thinks that people on the TV are actually in the room',
	'45. Challenging behaviour: Has temper outbursts',
	'46. Challenging behaviour: Threatens to harm self/others or property',
	'47. Challenging behaviour: Is uncooperative when asked to do something',
	'48. Challenging behaviour: 48. Disturbs others by shouting or yelling',
	'49. Disinhibition: Shows socially embarassing behaviour',
	'50. Disinhibition: Makes tactless or suggestive remarks',
	'51. Disnihibition: Displays suggestive behaviour (e.g. touching inappropriately)',
	'52. Disinhibition: Acts impulsively without thinking',
	'53. Disnihibition: Talks to total strangers as if they know them',
	'54. Eating habits: Prefers sweet foods more than before',
	'55. Eating habits: Wants to eat the same foods repeatedly',
	'56. Eating habits: Her/his appetite is greater, s/he/[they] eat[s] more than before',
	'57. Eating habits: Table manners are declining eg stuffing food into mouth',
	'58. Eating Habits: Eats non-edible foodstuffs or things not normally eaten',
	'59. Sleep: Sleep is disturbed at night',
	'60. Sleep: Sleeps more by day than before (cat naps etc.)',
	'61. Stereotypic & motor behaviours: Is rigid in her/his/[their] ideas and opinions',
	'62. Stereotypic & motor behaviours: Develops routines from which s/he/[they] cannot easily be discouraged eg wanting to eat or go for walks at fixed times',
	'63. Stereotypic & motor behaviours: Exhibits rituals eg takes the same route across the kitchen, only steps on certain floor tiles',
	'64. Stereotypic & motor behaviours: Clock watches or appears pre-occupied with time',
	'65. Stereotypic & motor behaviours: Appears pre-occupied with counting, numbers, puzzles or jigsaws',
	'66. Stereotypic & motor behaviours: Takes, hides or heards things, or packs away special items',
	'67. Stereotypic & motor behaviours: Repeatedly uses the same expression or catch phrase',
	'68. Stereotypic & motor mehaviours: S/he/[they] immediately repeat[s] words and sentences that you or others have just said (echolalia)',
	'69. Stereotypic & motor behaviours: Paces around without purpose',
	'70. Stereotypic & motor behaviours: Rummages around excessively',
	'71. Stereotypic & motor behaviours: S/he/[they] fidget[s] (eg bounces, taps feet/hands) a lot',
	'72. Motivation: Shows less enthusiasm for her/his/[their] usual interests',
	'73. Motivation: Shows little interest in doing new things',
	'74. Motivation: Requires nagging to start activities and chores',
	'75. Motivation: Shows no interest in attending social functions',
	'76. Motivation: Fails to maintain motivation to keep in contact with friends and family',
	'77. Motivation: Withdraws from others, fails to start conversations',
	'78. Motivation: Appears indifferent to the worries and concerns of family members',
	'79. Motivation: Shows reduced affection',
	'80. Insight/Awareness: Shows insight into changes in behaviour and personality (if appropriate)',
	'81. Insight/Awareness: Shows insight into memory problems'
	# Add more items as needed
    );

    my %cbi_scores;

    # Get user input for each CBI item
    foreach my $item (sort @cbi_items) {
# added sort
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
    foreach my $item_score (sort values %cbi_scores) {
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
    for my $item (sort keys %scores) {
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
print "\nTotal CBI score: $cbi_scores{total_score} /324\n";

# Ask user if they want to save the result
while(1){
print "Do you want to save the result to a file? (yes/no): ";
my $save_option = lc(<STDIN>);
chomp($save_option);

if ($save_option eq 'yes') {
    save_result_to_file(%cbi_scores) && exit print "saved\n"
}
elsif ($save_option eq 'no') {exit print "not saved\n"
				
}
    else 
	{ print "invalid option, please answer yes or no\n"
}
}
