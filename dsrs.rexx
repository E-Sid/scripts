/* Dementia Severity Rating Scale */
Say 'This is Dementia Severity Rating Scale (DSRS)'
Say 'Memory [0-6]'
Do Until A = 0 | A < 7
Pull A
If A < 0 | A > 6 then
say 'value is out of range, please enter correct value'
end
Say 'Speech and Language [0-6]'
Do Until B = 0 | B < 7
Pull B
If B < 0 | B > 6 then
say 'value is out of range, please enter correct value'
end
Say 'Recognition of family members [0-5]'
Do Until C = 0 | C < 6
Pull C
If C < 0 | C > 5 then
say 'value is out of range, please enter correct value'
end
Say 'Orientation to time [0-4]'
Do Until D = 0 | D < 5
Pull D
If D < 0 | D > 4 then
say 'value is out of range, please enter correct value'
end
Say 'Orientation to place [0-4]'
Do Until E = 0 | E < 5
Pull E
If E < 0 | E > 4 then
say 'value is out of range, please enter correct value'
end
Say 'Ability to make decisions [0-4]'
Do Until F = 0 | F < 5
Pull F
If F < 0 | F > 4 then
Say 'value is out of range, please enter correct value'
end
Say 'Social and community activity [0-5]'
Do Until G = 0 | G < 6
Pull G
If G < 0 | G > 5 then
say 'value is out of range, please enter correct value'
end
Say 'Home activities and responsibilities [0-4]'
Do Until H = 0 | H < 5
Pull H
If H < 0 | H > 4 then
Say 'value is out of range, please enter correct value'
end
Say 'Personal care - cleanliness [0-3]'
Do Until I = 0 | I < 4
Pull I
If I < 0 | I > 3 then
Say 'value is out of range, please enter correct value'
end
Say 'Eating [0-3]'
Do Until J = 0 | J < 4
Pull J
If J < 0 | J > 3 then
Say 'value is out of range, please enter correct value'
end
Say 'Control of urination and bowels [0-4]'
Do Until K = 0 | K < 5
Pull K
If K < 0 | K > 4 then
Say 'value is out of range, please enter correct value'
end
Say 'Ability to get from place to place [0-6]'
Do Until L = 0 | L < 7
Pull L
If L < 0 | L > 6 then
say 'value is out of range, please enter correct value'
end
M = A + B + C + D + E + F + G + H + I + J + K + L
Say 'The DSRS score is' M
