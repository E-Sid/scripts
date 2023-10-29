#!/usr/bin/awk -f

function is_numeric(value) {
    return value == value + 0  # Check if the value is numeric
}

BEGIN {
    printf "Triangle Area and Surface Area Calculator\n"
    printf "------------------------------------------\n\n"

    valid_input = 0

    # Prompt for the base
    while (!valid_input) {
        printf "Enter the base length of the triangle: "
        getline base < "/dev/tty"

        if (is_numeric(base) && base > 0) {
            valid_input = 1
        } else {
            print "Invalid input. Please enter a positive numeric value for the base."
        }
    }

    valid_input = 0

    # Prompt for the height
    while (!valid_input) {
        printf "Enter the height of the triangle: "
        getline height < "/dev/tty"

        if (is_numeric(height) && height > 0) {
            valid_input = 1
        } else {
            print "Invalid input. Please enter a positive numeric value for the height."
        }
    }

    # Calculate the area and surface area
    area = 0.5 * base * height
    side_c = sqrt(base^2 + height^2)  # Calculate the hypotenuse (assuming a right-angled triangle)
    surface_area = base + height + side_c

    printf "\nTriangle Properties:\n"
    printf "Base Length: %.2f\n", base
    printf "Height: %.2f\n", height
    printf "Area: %.2f\n", area
    printf "Surface Area: %.2f\n", surface_area

    # Option to save the output
    printf "\nDo you want to save the output to a file? (yes/no): "
    getline save_option < "/dev/tty"

    if (tolower(save_option) == "yes") {
        save_to_file("triangle_output.txt")
        print "Output saved to 'triangle_output.txt'."
    }
}

function save_to_file(filename) {
    # Save the output to a file
    printf "Triangle Area and Surface Area Output\n" > filename
    printf "-----------------------------------\n\n" >> filename
    printf "Base Length: %.2f\n", base >> filename
    printf "Height: %.2f\n", height >> filename
    printf "Area: %.2f\n", area >> filename
    printf "Surface Area: %.2f\n", surface_area >> filename
}
