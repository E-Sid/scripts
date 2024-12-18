#!/usr/bin/awk -f

BEGIN {
    # Define the total number of items and valid score range
    num_items = 18
    min_score = 1
    max_score = 7

    # Define the names of the 18 BPRS items
    items[1]  = "Somatic Concern"
    items[2]  = "Anxiety"
    items[3]  = "Emotional Withdrawal"
    items[4]  = "Conceptual Disorganization"
    items[5]  = "Guilt Feelings"
    items[6]  = "Tension"
    items[7]  = "Mannerisms and Posturing"
    items[8]  = "Grandiosity"
    items[9]  = "Depressive Mood"
    items[10] = "Hostility"
    items[11] = "Suspiciousness"
    items[12] = "Hallucinatory Behavior"
    items[13] = "Motor Retardation"
    items[14] = "Uncooperativeness"
    items[15] = "Unusual Thought Content"
    items[16] = "Blunted Affect"
    items[17] = "Excitement"
    items[18] = "Disorientation"

    # Introduction message
    print "Brief Psychiatric Rating Scale (BPRS) Scoring"
    print "Please enter scores for each item (1-7):"

    # Initialize total score
    total_score = 0
}

# Function to validate input
function validate_input(score) {
    return (score >= min_score && score <= max_score)
}

{
    # Iterate through each item
    for (i = 1; i <= num_items; i++) {
        while (1) {
            # Prompt user with the item name
            printf "Item %d - %s (1-7): ", i, items[i]
            getline score < "-"  # Read input from standard input

            # Validate the input
            if (score ~ /^[0-9]+$/ && validate_input(score)) {
                total_score += score
                break
            } else {
                print "Invalid input! Please enter a number between 1 and 7."
            }
        }
    }

    # Display the total score
    print "\nTotal BPRS Score: " total_score

    # Interpretation of the total score
    if (total_score <= 31) {
        print "Interpretation: Minimal Symptoms"
    } else if (total_score <= 53) {
        print "Interpretation: Mild to Moderate Symptoms"
    } else {
        print "Interpretation: Severe Symptoms"
    }

    exit
}
