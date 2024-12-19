#!/usr/bin/awk -f

# Function to validate input (ensures only valid responses are entered)
function get_valid_input(prompt, min, max, value) {
    while (1) {
        printf "%s", prompt;
        getline value < "-";  # Read input from the user
        if (value >= min && value <= max && value ~ /^[0-9]+$/) {
            return value;  # Return valid input
        } else {
            print "Invalid input! Please enter a number between " min " and " max ".";
        }
    }
}

BEGIN {
    # Introduction
    print "AUDIT (Alcohol Use Disorders Identification Test)";
    print "This test consists of 10 questions to assess alcohol consumption and related behaviors.";
    print "Please enter valid responses as per the given range for each question.";
    print "----------------------------------------";

    # Initialize total score
    total_score = 0;

    # Define questions and their valid response ranges
    questions[1] = "How often do you have a drink containing alcohol?";
    options[1] = "0: Never, 1: Monthly or less, 2: 2–4 times a month, 3: 2–3 times a week, 4: 4+ times a week";
    min[1] = 0; max[1] = 4;

    questions[2] = "How many drinks do you have on a typical day when you are drinking?";
    options[2] = "0: 1–2, 1: 3–4, 2: 5–6, 3: 7–9, 4: 10+";
    min[2] = 0; max[2] = 4;

    questions[3] = "How often do you have 6 or more drinks on one occasion?";
    options[3] = "0: Never, 1: Less than monthly, 2: Monthly, 3: Weekly, 4: Daily or almost daily";
    min[3] = 0; max[3] = 4;

    questions[4] = "How often during the last year have you found you were not able to stop drinking once you had started?";
    options[4] = "0: Never, 1: Less than monthly, 2: Monthly, 3: Weekly, 4: Daily or almost daily";
    min[4] = 0; max[4] = 4;

    questions[5] = "How often during the last year have you failed to do what was normally expected of you because of drinking?";
    options[5] = "0: Never, 1: Less than monthly, 2: Monthly, 3: Weekly, 4: Daily or almost daily";
    min[5] = 0; max[5] = 4;

    questions[6] = "How often during the last year have you needed a first drink in the morning to get yourself going after a heavy drinking session?";
    options[6] = "0: Never, 1: Less than monthly, 2: Monthly, 3: Weekly, 4: Daily or almost daily";
    min[6] = 0; max[6] = 4;

    questions[7] = "How often during the last year have you had a feeling of guilt or remorse after drinking?";
    options[7] = "0: Never, 1: Less than monthly, 2: Monthly, 3: Weekly, 4: Daily or almost daily";
    min[7] = 0; max[7] = 4;

    questions[8] = "How often during the last year have you been unable to remember what happened the night before because of drinking?";
    options[8] = "0: Never, 1: Less than monthly, 2: Monthly, 3: Weekly, 4: Daily or almost daily";
    min[8] = 0; max[8] = 4;

    questions[9] = "Have you or someone else been injured as a result of your drinking?";
    options[9] = "0: No, 2: Yes, but not in the last year, 4: Yes, during the last year";
    min[9] = 0; max[9] = 4;

    questions[10] = "Has a relative, friend, doctor, or other health worker been concerned about your drinking or suggested you cut down?";
    options[10] = "0: No, 2: Yes, but not in the last year, 4: Yes, during the last year";
    min[10] = 0; max[10] = 4;

    # Loop through each question
    for (i = 1; i <= 10; i++) {
        print "Question " i ": " questions[i];
        print "Options: " options[i];
        answer = get_valid_input("Your answer: ", min[i], max[i]);
        total_score += answer;
    }

    # Display total score and interpretation
    print "----------------------------------------";
    print "Total AUDIT Score: " total_score;
    if (total_score <= 7) {
        print "Interpretation: Low risk (alcohol education may be helpful).";
    } else if (total_score >= 8 && total_score <= 15) {
        print "Interpretation: Medium risk (advice on reducing drinking is recommended).";
    } else if (total_score >= 16 && total_score <= 19) {
        print "Interpretation: High risk (brief counseling and monitoring are recommended).";
    } else {
        print "Interpretation: Possible alcohol dependence (referral to specialist for diagnosis and treatment).";
    }
    exit;
}
