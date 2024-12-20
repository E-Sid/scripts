#!/usr/bin/perl
use strict;
use warnings;

# Function to validate input (ensures valid responses are entered)
sub get_valid_input {
    my ($prompt, $allowed_values) = @_;
    my $value;

    while (1) {
        print $prompt;
        chomp($value = <STDIN>);

        # Check if the input is in the allowed values
        if (grep { $_ == $value } @$allowed_values) {
            return $value;
        } else {
            print "Invalid input! Please enter one of the following: " . join(", ", @$allowed_values) . ".\n";
        }
    }
}

# Introduction
print "Bush-Francis Catatonia Rating Scale (BFCRS)\n";
print "This test evaluates the severity of catatonia across 23 items.\n";
print "Please rate each item as instructed.\n";
print "----------------------------------------\n";

# Initialize total score
my $total_score = 0;

# Define the items and their valid ranges
my %items = (
    1  => { text => "Immobility/stupor",         allowed => [0, 1, 2, 3] },
    2  => { text => "Mutism",                   allowed => [0, 1, 2, 3] },
    3  => { text => "Staring",                  allowed => [0, 1, 2, 3] },
    4  => { text => "Posturing/catalepsy",      allowed => [0, 1, 2, 3] },
    5  => { text => "Grimacing",                allowed => [0, 1, 2, 3] },
    6  => { text => "Echopraxia/echolalia",     allowed => [0, 1, 2, 3] },
    7  => { text => "Stereotypy",               allowed => [0, 1, 2, 3] },
    8  => { text => "Mannerisms",               allowed => [0, 1, 2, 3] },
    9  => { text => "Verbigeration",            allowed => [0, 1, 2, 3] },
    10 => { text => "Rigidity",                 allowed => [0, 1, 2, 3] },
    11 => { text => "Negativism",               allowed => [0, 1, 2, 3] },
    12 => { text => "Waxy flexibility",         allowed => [0, 3] }, # Only 0 or 3
    13 => { text => "Withdrawal",               allowed => [0, 1, 2, 3] },
    14 => { text => "Excitement",               allowed => [0, 1, 2, 3] },
    15 => { text => "Impulsivity",              allowed => [0, 1, 2, 3] },
    16 => { text => "Automatic obedience",      allowed => [0, 1, 2, 3] },
    17 => { text => "Mitgehen",                 allowed => [0, 1, 2, 3] },
    18 => { text => "Gegenhalten",              allowed => [0, 3] }, # Only 0 or 3
    19 => { text => "Ambitendency",             allowed => [0, 1, 2, 3] },
    20 => { text => "Grasp reflex",             allowed => [0, 1, 2, 3] },
    21 => { text => "Perseveration",            allowed => [0, 1, 2, 3] },
    22 => { text => "Combativeness",            allowed => [0, 1, 2, 3] },
    23 => { text => "Autonomic abnormalities",  allowed => [0, 1, 2, 3] }
);

# Loop through each item
foreach my $i (sort { $a <=> $b } keys %items) {
    my $item = $items{$i};
    my $prompt = "Item $i: $item->{text} (Allowed: " . join(", ", @{$item->{allowed}}) . "): ";
    my $score = get_valid_input($prompt, $item->{allowed});
    $total_score += $score;
}

# Display the total score
print "----------------------------------------\n";
print "Total BFCRS Score: $total_score\n";

# Interpretation based on total score (example thresholds)
if ($total_score == 0) {
    print "Interpretation: No signs of catatonia.\n";
} elsif ($total_score <= 14) {
    print "Interpretation: Mild to moderate catatonia.\n";
} else {
    print "Interpretation: Severe catatonia (requires urgent intervention).\n";
}
print "----------------------------------------\n";
