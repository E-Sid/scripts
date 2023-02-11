/* REXX */
Say "This is mean arterial blood pressure Calculator"
Say 'Please, enter the current in systolic blood pressure'
Pull S
Say 'Please, enter the diastolic blood pressure'
Do Until D < S
Pull D
If D > S then
Say 'The diastolic blood pressure has to be lower than the systolic. Please, enter a valid number'
end
M = D + (1/3 * (S-D))
Say 'The mean arterial blood pressure is' M
