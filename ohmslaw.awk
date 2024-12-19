##!/usr/bin/awk -f

BEGIN {
    # Introduction
    print "Ohm's Law Calculator";
    print "Select what you want to calculate:";
    print "  V - Voltage (V = I * R)";
    print "  I - Current (I = V / R)";
    print "  R - Resistance (R = V / I)";

    # Input choice and validate
    while (1) {
        printf "Enter your choice (V/I/R): ";
        getline choice < "-";
        choice = toupper(choice);
        if (choice ~ /^[VIR]$/) {
            break;
        } else {
            print "Invalid choice! Please enter V, I, or R.";
        }
    }

    # Collect necessary inputs and validate
    if (choice == "V") {
        current = get_valid_input("Current (I in Amperes): ");
        resistance = get_valid_input("Resistance (R in Ohms): ");
        result = current * resistance;
        print "Voltage (V) = " result " Volts";

    } else if (choice == "I") {
        voltage = get_valid_input("Voltage (V in Volts): ");
        resistance = get_valid_input("Resistance (R in Ohms): ");
        result = voltage / resistance;
        print "Current (I) = " result " Amperes";

    } else if (choice == "R") {
        voltage = get_valid_input("Voltage (V in Volts): ");
        current = get_valid_input("Current (I in Amperes): ");
        result = voltage / current;
        print "Resistance (R) = " result " Ohms";
    }
}

# Function to validate user input
function get_valid_input(prompt, value) {
    while (1) {
        printf "Enter " prompt;
        getline value < "-";
        if (value ~ /^[0-9]+(\.[0-9]+)?$/ && value > 0) {
            return value;  # Valid input
        } else {
            print "Invalid input! Please enter a positive number.";
        }
    }
exit;
}
