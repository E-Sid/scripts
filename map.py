def calculate_map(systolic_bp, diastolic_bp, heart_rate):
    return ((2 * diastolic_bp) + systolic_bp) / 3

systolic_bp = int(input("Enter systolic blood pressure: "))
diastolic_bp = int(input("Enter diastolic blood pressure: "))
heart_rate = int(input("Enter heart rate: "))

map = calculate_map(systolic_bp, diastolic_bp, heart_rate)

print("Mean Arterial Blood Pressure: ", map)
