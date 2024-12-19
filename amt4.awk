#!/usr/bin/awk -f

# Function to validate input (ensures only 0 or 1 is entered)
function get_valid_input(prompt, regex, value) {
    while (1) {
        printf "%s", prompt;
        getline value < "-";  # Read input from the user
        if (value ~ regex) {
            return value;  # Return valid input
        } else {
            print "Invalid input! Please enter 0 for correct or 1 for incorrect.";
        }
    }
}

BEGIN {
    # Introduction
    print "AMT4 (Abbreviated Mental Test) Calculator";
    print "This test evaluates cognitive impairment using 4 simple questions.";
    print "For each question, enter 0 for correct and 1 for incorrect.";
    print "----------------------------------------";

    # Initialize total score
    total_score = 0;

    # Prompt for each question and validate input
    q1 = get_valid_input("Question 1: Age (0 for correct, 1 for incorrect): ", "^(0|1)$");
    total_score += q1;

    q2 = get_valid_input("Question 2: Date of birth (0 for correct, 1 for incorrect): ", "^(0|1)$");
    total_score += q2;

    q3 = get_valid_input("Question 3: Current year (0 for correct, 1 for incorrect): ", "^(0|1)$");
    total_score += q3;

    q4 = get_valid_input("Question 4: Place (name of hospital, building, or location) (0 for correct, 1 for incorrect): ", "^(0|1)$");
    total_score += q4;

    # Display total score and interpretation
    print "----------------------------------------";
    print "Total AMT4 Score: " total_score;
    if (total_score == 0) {
        print "Interpretation: No cognitive impairment.";
    } else if (total_score >= 1 && total_score <= 2) {
        print "Interpretation: Possible mild cognitive impairment.";
    } else {
        print "Interpretation: Likely significant cognitive impairment.";
    }
exit;
}
