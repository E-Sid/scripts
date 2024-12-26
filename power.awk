#!/usr/bin/awk -f

function is_numeric(value) {
    return value == value + 0  # Check if the value is numeric
}

BEGIN {
    valid_input = 0

    while (!valid_input) {
        printf "Please, enter the voltage in volts: "
        getline volts

        printf "Please, enter the current in amperes: "
        getline current

        # Check for valid numeric input
        if (is_numeric(volts) && is_numeric(current) && volts > 0 && current > 0) {
            valid_input = 1
        } else {
            print "Invalid input. Both values must be numeric and greater than zero."
        }
    }

    # Calculate pack years and ensure it's not zero or less
    power = calculate_power(volts, current)
    if (power <= 0) {
        print "Invalid result. Power cannot be zero or less."
        exit 1
    }

    printf "The calculated power is: %.2f", power

    printf " watts"
}


function calculate_power(volts, current) {
    # Add your calculation logic here, for example:
    power = volts * current
    return power
}
