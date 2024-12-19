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
    print "Abbreviated Mental Test (AMT) Calculator";
    print "This test consists of 10 questions to assess cognitive function.";
    print "For each question, enter 0 for correct and 1 for incorrect.";
    print "----------------------------------------";

    # Initialize total score
    total_score = 0;

    # Questions for the AMT
    questions[1] = "What is your age?";
    questions[2] = "What is the time to the nearest hour?";
    questions[3] = "What is the year?";
    questions[4] = "What is your date of birth?";
    questions[5] = "What is the name of this place?";
    questions[6] = "Can you recognize two people (e.g., doctor/nurse)?";
    questions[7] = "What is your home address (or where were you born)?";
    questions[8] = "What year did World War II end?";
    questions[9] = "Who is the current head of state (or president)?";
    questions[10] = "Can you count backward from 20 to 1?";

    # Loop through each question
    for (i = 1; i <= 10; i++) {
        prompt = "Question " i ": " questions[i] " (0 for correct, 1 for incorrect): ";
        answer = get_valid_input(prompt, "^(0|1)$");
        total_score += answer;
    }

    # Display total score and interpretation
    print "----------------------------------------";
    print "Total AMT Score: " total_score;
    if (total_score <= 3) {
        print "Interpretation: Normal cognition.";
    } else if (total_score > 3 && total_score <= 7) {
        print "Interpretation: Possible cognitive impairment.";
    } else {
        print "Interpretation: Significant cognitive impairment.";
    }
    exit;
}
