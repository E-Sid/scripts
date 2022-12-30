/* Main program */
Say 'This is Alcohol Use Disorders Identification Test (AUDIT)'
Say 'Please, type the number that is closest to your answer'
Say 'I. How often do you have a drink containing alcohol?'
Say '1. Never'
Say '2. Monthly or less'
Say '3. 2-4 times a month'
Say '4. 2-3 times a week'
Say '5. 4 or more times a week'
Do Until A > 0 & A < 6
Pull A
If A < 0 | A > 5 then
say 'out of range, please enter correct value'
end
Say 'II. How many standard drinks containing alcohol do you have on a typical day when drinking?'
say '1. 1 or 2'
say '2. 3 or 4'
say '3. 5 or 6'
say '4. 7 to 9'
say '5. 10 or more'
Do Until B > 0 & B < 6
Pull B
If B < 0 | B > 5 then
say 'out of range, please enter correct value'
end
Say 'III. How often do you have six or more drinks on one occasion?'
say '1. Never'
say '2. Less than monthly'
say '3. Monthly'
say '4. Weekly'
say '5. Daily or almost daily'
Do Until C > 0 & C < 6
Pull C
If C < 0 | C > 5 then
say 'out of range, please enter correct value'
end
Say 'IV. During the past year, how often have you found that you were not able to stop drinking once you had started?'
say '1. Never'
say '2. Less than monthly'
say '3. Monthly'
say '4. Weekly'
say '5. Daily or almost daily'
Do Until D > 0 & D < 6
Pull D
If D < 0 | D > 5 then
say 'out of range, please enter correct value'
end
Say 'V. During the past year, how often have you failed to do what was normally expected of you because of drinking?'
say '1. Never'
say '2. Less than monthly'
say '3. Monthly'
say '4. Weekly'
say '5. Daily or almost daily'
Do Until E > 0 & E < 6
Pull E
If E < 0 | E > 5 then
say 'out of range, please enter correct value'
end
Say 'VI. During the past year, how often have you needed a drink in the morning to get yourself going after a heavy drinking session?'
say '1. Never'
say '2. Less than monthly'
say '3. Monthly'
say '4. Weekly'
say '5. Daily or almost daily'
Do Until F > 0 & F < 6
Pull F
If F < 0 | F > 5 then
say 'out of range, please enter correct value'
end
Say 'VII. During the past year, how often have you had a feeling of guilt or remorse after drinking?'
say '1. Never'
say '2. Less than monthly'
say '3. Monthly'
say '4. Weekly'
say '5. Daily or almost daily'
Do Until G > 0 & G < 6
Pull G
If G < 0 | G > 5 then
say 'out of range, please enter correct value'
end
Say 'VIII. During the past year, how often have you been unable to remember what happened the night before because you had been drinking?'
say '1. Never'
say '2. Less than monthly'
say '3. Monthly'
say '4. Weekly'
say '5. Daily or almost daily'
Do Until H > 0 & H < 6
Pull H
If H < 0 | H > 5 then
say 'out of range, please enter correct value'
end
Say 'IX. Have you or somebody else been injured as a result of your drinking?'
Say '1. No'
Say '3. Yes, but not in the past year'
Say '5. Yes, during the past year '
Do Until I = 1  | I =3 |  I = 5
Pull I
If I < 0 | I > 5 | I =2 | I = 4 then
say 'out of range, please enter correct value'
end
Say 'X. Has a relative or friend, doctor or other health worker been concerned about your drinking or suggested you cut down?'
Say '1. No'
Say '3. Yes, but not in the past year'
Say '5. Yes, during the past year '
Do Until J = 1  | J =3 |  J = 5
Pull H
If J < 0 | J > 5 | J = 2 | J = 4 then
say 'out of range, please enter correct value'
end
K = A + B + C + D + E + F + G + H + I + J
Say 'AUDIT score is' K
