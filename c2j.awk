#!/usr/bin/awk -f

BEGIN {
    cal_to_joule = 4.184
    while (1) {
        printf "Enter the number of calories to convert to joules: "
        getline input < "-"

        if (input ~ /^-?[0-9]+(\.[0-9]+)?$/) {
            joules = input * cal_to_joule
            printf "%.2f calories is equal to %.2f joules\n", input, joules
            break
        } else {
            print "Invalid input. Please enter a valid number."
        }
    }
}
