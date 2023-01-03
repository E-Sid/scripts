/* Main program */
Say 'This is 4AT Delirium test scoring calculator'
Say 'I.Please, enter the score for alerntess [0 or 4]'
Do Until A = 0  | A = 4
Pull A
If A < 0 | A > 4 | A = 1 | A = 2 | A = 3 then
say 'out of range, please enter correct value'
end
Say 'II. Please, enter the score for AMT4 [0-2]'
Say 'No mistakes [0]'
Say  '1 mistake [1]'
Say  '2 or more mistakes/untestable [2]'
Do Until B = 0 | B < 3
Pull B
If B < 0 | B > 2 then
say 'value is out of range, please enter correct value'
end
Say 'III. Please, enter value for attention [0-2]'
Do Until C = 0 | C < 3
Pull C
If C < 0 | C > 2 then
say 'value is out of range, please enter correct value'
end
Say 'IV. Please, enter value for acute change or fluctuating course [0 or 4]'
Do Until D = 0  | D = 4
Pull D
If D < 0 | D > 4 | D = 1 | D = 2 | D = 3 then
say 'out of range, please enter correct value'
end
E = A + B + C + D
Say 'The 4AT score is' E
