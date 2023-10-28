#!/usr/bin/awk -f

BEGIN {
    valid_input = 0
    year_pattern = "^[0-9]{4}$"

    while (!valid_input) {
        printf "Enter year of birth (YYYY): "
        getline birth_year < "/dev/tty"

        if (birth_year ~ year_pattern) {
            current_year = strftime("%Y")
            age = current_year - birth_year

            if (age > 0) {
                valid_input = 1
            } else {
                print "Invalid age. Age cannot be zero or less."
            }
        } else {
            print "Invalid input. Please enter a valid value."
        }
    }

    printf "Age is: %d years\n", age
}
