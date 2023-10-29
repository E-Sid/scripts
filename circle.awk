#!/usr/bin/awk -f

function is_numeric(value) {
    return value == value + 0  # Check if the value is numeric
}

BEGIN {
    printf "Circle Area and Surface Area Calculator\n"
    printf "----------------------------------------\n\n"

    valid_input = 0

    # Prompt for the diameter
    while (!valid_input) {
        printf "Enter the diameter of the circle: "
        getline diameter < "/dev/tty"

        if (is_numeric(diameter) && diameter > 0) {
            valid_input = 1
        } else {
            print "Invalid input. Please enter a positive numeric value for the diameter."
        }
    }

    # Calculate the radius
    radius = diameter / 2

    # Calculate the area and surface area
    area = 3.14159 * radius * radius
    surface_area = 2 * 3.14159 * radius

    printf "\nCircle Properties:\n"
    printf "Radius: %.2f\n", radius
    printf "Area: %.2f\n", area
    printf "Surface Area: %.2f\n", surface_area
}
