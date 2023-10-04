#!/usr/bin/perl

use strict;
use warnings;

sub calculate_raid_total_score {
    my @raid_items = (
    '1. Worry about physical health.',
    '2. Worry about cognitive perform ance (failing m em ory,
getting lost when goes out, not able to following
conversation).',
  '3. Worry over finances, family problems, physical health of
relatives.',
  '4. Worry associated with false belief and/or perception.',
  '5. Worry over trifles (repeatedly calling for attention over
trivial m atters).',
  '6. Frightened and anxious (keyed up and on the edge).',
  '7. Sensitivity to noise (exaggerated startle response).',
  '8. Sleep disturbance (trouble falling or staying asleep).',
  '9. Irritability (more easily annoyed than usual, short tempered
  and angry outbursts).',
  '10. Trembling.',
  '11. Motor tension (complain of headache, other body aches
  and pains).',
  '12. Restlessness fidgeting, cannot sit still, pacing, wringing
  hands, picking clothes).',
  '13. Fatigueability, tiredness.',
  '14. Palpitations (complains of heart racing or thumping).',
  '15. Dry mouth (not due to medication), sinking feeling in the
  stomach.',
  '16. Hyperventilating, shortness of breath (even when not
  exerting).',
  '17. Dizziness or light-headedness (complains as if going to
  faint).',
  '18. Sweating, flushes or chills, tingling or numbness of fingers
  and toes.',
    );

    my %raid_scores;

    # Get user input for each RAID item
    foreach my $item (@raid_items) {
        my $valid_input = 0;

        while (!$valid_input) {
            print "Enter score for $item [0-3]: ";
            my $score = <STDIN>;
            chomp($score);

            # Validate input
            if ($score =~ /^\d+$/ && $score >= 0 && $score <= 3) {
                $raid_scores{$item} = $score;
                $valid_input = 1;
            } else {
                print "Invalid input. Please enter a number between 0 and 3.\n";
            }
        }
    }

    # Calculate total RAID score
    my $total_score = 0;
    foreach my $item_score (values %raid_scores) {
        $total_score += $item_score;
    }

    return %raid_scores, total_score => $total_score;
}

# Main program
print "Rating Anxiety in Dementia (RAID) Total Score Calculator\n";
my %raid_scores = calculate_raid_total_score();

# Print the total score
print "\nRAID Item Scores:\n";
for my $item (keys %raid_scores) {
    print "$item: $raid_scores{$item}\n";
}
print "\nTotal RAID Score: $raid_scores{total_score}\n";
