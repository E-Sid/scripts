/* HIS Rexx script */
Say "This is Hachinski Ischaemic Score (HIS)"
Say "Abrupt onset [0 or 2]"
Do Until A = 0  | A = 2
Pull A
If A < 0 | A > 2 | A = 1 then
say 'value is out of range, please enter correct value'
end
Say "Stepwise deterioration [0-1]"
Do Until B = 0 | B = 1
Pull B
If B < 0 | B > 1 then
say 'value is out of range, please enter correct value'
end
Say "Fluctuating course [0 or 2]"
Do Until C = 0  | C = 2
Pull C
If C < 0 | C > 2 | C = 1 then
say 'value is out of range, please enter correct value'
end
Say "Nocturnal confusion [0-1]"
Do Until D = 0 | D = 1
Pull D
If D < 0 | D > 1 then
say 'value is out of range, please enter correct value'
end
Say "Relative preservation of personality [0-1]"
Do Until E = 0 | E = 1
Pull E
If E < 0 | E > 1 then
say 'value is out of range, please enter correct value'
end
Say "Depression [0-1]"
Do Until F = 0 | F = 1
Pull F
If F < 0 | F > 1 then
say 'value is out of range, please enter correct value'
end
Say "Somatic complaints [0-1]"
Do Until G = 0 | G = 1
Pull G
If G < 0 | G > 1 then
say 'value is out of range, please enter correct value'
end
Say "Emotional incontinence [0-1]"
Do Until H = 0 | H = 1
Pull H
If H < 0 | H > 1 then
say 'value is out of range, please enter correct value'
end
Say "History or presence of hypertension [0-1]"
Do Until I = 0 | I = 1
Pull I
If I < 0 | I > 1 then
say 'value is out of range, please enter correct value'
end
Say "History of strokes [0 or 2]"
Do Until J = 0  | J = 2
Pull J
If J < 0 | J > 2 | J = 1 then
say 'value is out of range, please enter correct value'
end
Say "Evidence of atherosclerosis [0-1]"
Do Until K = 0 | K = 1
Pull K
If K < 0 | K > 1 then
say 'value is out of range, please enter correct value'
end
Say "Focal neurological symptoms [0 or 2]"
Do Until L = 0  | L = 2
Pull L
If L < 0 | L > 2 | L = 1 then
say 'value is out of range, please enter correct value'
end
Say "Focal neurological signs [0 or 2]"
Do Until M = 0  | M = 2
Pull M
If M < 0 | M > 2 | M = 1 then
say 'value is out of range, please enter correct value'
end
N = A + B + C + D + E +F + G + H + I + J + K + L + M
Say "Hachinski Ischaemic Score is" N
