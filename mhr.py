def calculate_max_hr(age):
    return 220 - age

age = int(input("Enter age: "))

max_hr = calculate_max_hr(age)

print("Maximum Heart Rate: ", max_hr)
