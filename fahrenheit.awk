#!/bin/awk -f

BEGIN {
    print "Celsius to Fahrenheit Converter"

    valid_input = 0

    while (!valid_input) {
        printf "Enter temperature in Celsius: "
        getline celsius < "/dev/tty"

        # Check if the input is numerical and above absolute zero
        if (celsius ~ /^[0-9]*(\.[0-9]+)?$/ && celsius >= -273.15) {
            valid_input = 1
        } else {
            print "Invalid input. Please enter a valid numerical temperature above absolute zero (-273.15 or above)."
        }
    }

    fahrenheit = (celsius * 9 / 5) + 32

    printf "Temperature in Fahrenheit: %.2f\n", fahrenheit
}
