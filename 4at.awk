#!/usr/bin/awk -f

# Function to validate input with a regex
function get_valid_input(prompt, regex, value) {
    while (1) {
        printf "%s", prompt;
        getline value < "-";  # Read input from the user
        if (value ~ regex) {
            return value;  # Valid input, return it
        } else {
            print "Invalid input! Please enter a valid option.";
        }
    }
}

BEGIN {
    # Introduction
    print "4AT Delirium Test Calculator";
    print "This test evaluates delirium using 4 components: ";
    print "  1. Alertness (0, 4)";
    print "  2. AMT4 (0, 1, 2)";
    print "  3. Attention (0, 1, 2)";
    print "  4. Acute and Fluctuating Changes (0, 4)";
    print "----------------------------------------";

    # Initialize total score
    total_score = 0;

    # Prompt for each component and validate input
    alertness = get_valid_input("Alertness (0 for normal, 4 for abnormal): ", "^(0|4)$");
    total_score += alertness;

    amt4 = get_valid_input("AMT4 (0 for all correct, 1 for 1 wrong, 2 for 2+ wrong): ", "^(0|1|2)$");
    total_score += amt4;

    attention = get_valid_input("Attention (0 for correct, 1 for minor errors, 2 for serious errors): ", "^(0|1|2)$");
    total_score += attention;

    changes = get_valid_input("Acute and Fluctuating Changes (0 for no, 4 for yes): ", "^(0|4)$");
    total_score += changes;

    # Display total score and interpretation
    print "----------------------------------------";
    print "Total 4AT Score: " total_score;
    if (total_score >= 4) {
        print "Interpretation: Possible delirium.";
    } else if (total_score >= 1) {
        print "Interpretation: Cognitive impairment, but delirium less likely.";
    } else {
        print "Interpretation: No significant cognitive issues.";
    }
exit;
}
