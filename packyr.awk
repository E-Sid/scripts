#!/usr/bin/awk -f

function is_numeric(value) {
    return value == value + 0  # Check if the value is numeric
}

BEGIN {
    valid_input = 0

    while (!valid_input) {
        printf "Enter the number of packs smoked per day: "
        getline packs_per_day

        printf "Enter the number of years smoked: "
        getline years_smoked

        # Check for valid numeric input
        if (is_numeric(packs_per_day) && is_numeric(years_smoked) && packs_per_day > 0 && years_smoked > 0) {
            valid_input = 1
        } else {
            print "Invalid input. Both values must be numeric and greater than zero."
        }
    }

    # Calculate pack years and ensure it's not zero or less
    pack_years = calculate_pack_years(packs_per_day, years_smoked)
    if (pack_years <= 0) {
        print "Invalid result. Pack years cannot be zero or less."
        exit 1
    }

    printf "The calculated pack years is: %.2f\n", pack_years
}

function calculate_pack_years(packs_per_day, years_smoked) {
    # Add your calculation logic here, for example:
    packs_per_year = packs_per_day * 365
    pack_years = packs_per_day * years_smoked  # Assuming 1 pack = 20 cigarettes
    return pack_years
}
