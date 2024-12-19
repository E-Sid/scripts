#!/usr/bin/perl
use strict;
use warnings;

# Subroutine to calculate Ohm's Law
sub calculate_ohms_law {
    my ($choice, $value1, $value2) = @_;

    if ($choice eq 'V') {
        return $value1 * $value2;  # Voltage = Current * Resistance
    } elsif ($choice eq 'I') {
        return $value1 / $value2;  # Current = Voltage / Resistance
    } elsif ($choice eq 'R') {
        return $value1 / $value2;  # Resistance = Voltage / Current
    } else {
        die "Invalid choice! You must select V, I, or R.\n";
    }
}

# Subroutine to validate user input (ensures a positive number is entered)
sub get_valid_input {
    my ($prompt, $variable_name) = @_;
    my $value;

    while (1) {
        print $prompt;
        $value = <STDIN>;
        chomp($value);

        # Check if the value is a positive number
        if ($value =~ /^\d+(\.\d+)?$/ && $value > 0) {
            return $value;  # Return valid input
        } else {
            print "Invalid $variable_name! Please enter a positive number.\n";
        }
    }
}

# Main program
print "Ohm's Law Calculator\n";
print "Select what you want to calculate:\n";
print "  V - Voltage (V = I * R)\n";
print "  I - Current (I = V / R)\n";
print "  R - Resistance (R = V / I)\n";

# Get valid choice
my $choice;
while (1) {
    print "Enter your choice (V/I/R): ";
    $choice = <STDIN>;
    chomp($choice);
    $choice = uc($choice);  # Convert to uppercase for consistency

    # Validate choice
    if ($choice =~ /^[VIR]$/) {
        last;  # Exit loop if valid choice
    } else {
        print "Invalid choice! You must enter V, I, or R.\n";
    }
}

# Collect necessary inputs based on the user's choice
my ($value1, $value2, $result);

if ($choice eq 'V') {
    $value1 = get_valid_input("Enter Current (I in Amperes): ", "Current");
    $value2 = get_valid_input("Enter Resistance (R in Ohms): ", "Resistance");
    $result = calculate_ohms_law($choice, $value1, $value2);
    print "Voltage (V) = $result Volts\n";

} elsif ($choice eq 'I') {
    $value1 = get_valid_input("Enter Voltage (V in Volts): ", "Voltage");
    $value2 = get_valid_input("Enter Resistance (R in Ohms): ", "Resistance");
    $result = calculate_ohms_law($choice, $value1, $value2);
    print "Current (I) = $result Amperes\n";

} elsif ($choice eq 'R') {
    $value1 = get_valid_input("Enter Voltage (V in Volts): ", "Voltage");
    $value2 = get_valid_input("Enter Current (I in Amperes): ", "Current");
    $result = calculate_ohms_law($choice, $value1, $value2);
    print "Resistance (R) = $result Ohms\n";
}
