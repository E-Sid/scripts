#!/bin/awk -f

BEGIN {
    print "Fahrenheit to Celsius Converter"

    valid_input = 0

    while (!valid_input) {
        printf "Enter temperature in Fahrenheit: "
        getline fahrenheit < "/dev/tty"

        # Check if the input is numerical and above absolute zero
        if (fahrenheit ~ /^[0-9]*(\.[0-9]+)?$/ && fahrenheit >= -459.67) {
            valid_input = 1
        } else {
            print "Invalid input. Please enter a valid numerical temperature above absolute zero (-459.67 or above)."
        }
    }

    celsius = (5 / 9) * (fahrenheit - 32)

    printf "Temperature in Celsius: %.2f\n", celsius
}
