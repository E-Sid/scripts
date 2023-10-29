#!/usr/bin/awk -f

function is_numeric(value) {
    return value == value + 0  # Check if the value is numeric
}

BEGIN {
    printf "Rectangle Area and Surface Area Calculator\n"
    printf "-------------------------------------------\n\n"

    valid_input = 0

    # Prompt for the length
    while (!valid_input) {
        printf "Enter the length of the rectangle: "
        getline length < "/dev/tty"

        if (is_numeric(length) && length > 0) {
            valid_input = 1
        } else {
            print "Invalid input. Please enter a positive numeric value for the length."
        }
    }

    valid_input = 0

    # Prompt for the width
    while (!valid_input) {
        printf "Enter the width of the rectangle: "
        getline width < "/dev/tty"

        if (is_numeric(width) && width > 0) {
            valid_input = 1
        } else {
            print "Invalid input. Please enter a positive numeric value for the width."
        }
    }

    # Calculate the area and surface area
    area = length * width
    surface_area = 2 * (length + width)

    printf "\nRectangle Properties:\n"
    printf "Length: %.2f\n", length
    printf "Width: %.2f\n", width
    printf "Area: %.2f\n", area
    printf "Surface Area: %.2f\n", surface_area

    # Option to save the output
    printf "\nDo you want to save the output to a file? (yes/no): "
    getline save_option < "/dev/tty"

    if (tolower(save_option) == "yes") {
        save_to_file("rectangle_output.txt")
        print "Output saved to 'rectangle_output.txt'."
    }
}

function save_to_file(filename) {
    # Save the output to a file
    printf "Rectangle Area and Surface Area Output\n" > filename
    printf "------------------------------------\n\n" >> filename
    printf "Length: %.2f\n", length >> filename
    printf "Width: %.2f\n", width >> filename
    printf "Area: %.2f\n", area >> filename
    printf "Surface Area: %.2f\n", surface_area >> filename
}
