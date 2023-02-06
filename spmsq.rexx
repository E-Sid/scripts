/* REXX */
Say 'This is Short Portable Mental Status Questionnaire (SPMSQ)'
Say '1. What are the date, month, and year?'
Do Until A = 0 | A = 1
Pull A
If A < 0 | A > 1 then
say 'out of range, please enter correct value'
end
Say '2. What is the day of the week?'
Do Until B = 0 | B = 1
Pull B
If B < 0 | B > 1 then
say 'out of range, please enter correct value'
end
Say '3. What is the name of this place?'
Do Until C = 0 | C = 1
Pull C
If C < 0 | C > 1 then
say 'out of range, please enter correct value'
end
Say '4. What is your phone number?'
Do Until D = 0 | D = 1
Pull D
If D < 0 | D > 1 then
say 'out of range, please enter correct value'
end
Say '5. How old are you?'
Do Until E = 0 | E = 1
Pull E
If E < 0 | E > 1 then
say 'out of range, please enter correct value'
end
Say '6. When were you born?'
Do Until F = 0 | F = 1
Pull F
If F < 0 | F > 1 then
say 'out of range, please enter correct value'
end
Say '7. Who is the current president?'
Do Until G = 0 | G = 1
Pull G
If G < 0 | G > 1 then
say 'out of range, please enter correct value'
end
Say '8. Who was the president before him?'
Do Until H = 0 | H = 1
Pull H
If H < 0 | H > 1 then
say 'out of range, please enter correct value'
end
Say '9. What was your mother’s maiden name?'
Do Until I = 0 | I = 1
Pull I
If I < 0 | I > 1 then
say 'out of range, please enter correct value'
end
Say '10. Can you count backward from 20 by 3’s?'
Do Until J = 0 | J = 1
Pull J
If J < 0 | J > 1 then
say 'out of range, please enter correct value'
end
K = A + B + C + D + E + F + G + H + I + J
Say 'The SPMSQ score is' K
