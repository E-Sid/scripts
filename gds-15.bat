# Rem FreeDOS batch file
@echo off

echo This is Geratric Depression Scale (GDS-15). Please, answer with y for yes or n for no

set/p q01=Are you basically satisfied with your life? (y/n)
set/p q02=Have you dropped many of your activities and interests? (y/n)
set/p q03=Do you feel that your life is empty? (y/n)
set/p q04=Do you often get bored? (y/n)
set/p q05=Are you in good spirits most of the time? (y/n)
set/p q06=Are you afraid that something bad is going to happen to you? (y/n)
set/p q07=Do you feel happy most of the time? (y/n)
set/p q08=Do you often feel helpless? (y/n)
set/p q09=Do you prefer to stay at home, rather than go out and do new things? (y/n)
set/p q10=Do you feel you have more problems with memory than most? (y/n)
set/p q11=Do you think it is wonderful to be alive? (y/n)
set/p q12=Do you feel pretty worthless the way you are now? (y/n)
set/p q13=Do you feel full of energy? (y/n)
set/p q14=Do you feel that your situation is hopeless? (y/n)
set/p q15=Do you think that most people are better off than you are? (y/n)

set score=0

if %q01% == No set /a score=%score% + 1
if %q01% == NO set /a score=%score% + 1
if %q01% == n set /a score=%score% + 1
if %q01% == N set /a score=%score% + 1
if %q01% == nO set /a score=%score% + 1

if %q02% == yes set /a score=%score% + 1
if %q02% == Yes set /a score=%score% + 1
if %q02% == y set /a score=%score% + 1
if %q02% == Y set /a score=%score% + 1
if %q02% == yEs set /a score=%score% + 1
if %q02% == yeS set /a score=%score% +1
if %q02% == yES set /a score=%score% + 1
if %q02% == YeS set /a score=%score% + 1
if %q02% == YEs set /a score=%score% + 1

if %q03% == yes set /a score=%score% + 1
if %q03% == Yes set /a score=%score% + 1
if %q03% == y set /a score=%score% + 1
if %q03% == Y set /a score=%score% + 1
if %q03% == yEs set /a score=%score% + 1
if %q03% == yeS set /a score=%score% +1
if %q03% == yES set /a score=%score% + 1
if %q03% == YeS set /a score=%score% + 1
if %q03% == YEs set /a score=%score% + 1

if %q04% == yes set /a score=%score% + 1
if %q04% == Yes set /a score=%score% + 1
if %q04% == y set /a score=%score% + 1
if %q04% == Y set /a score=%score% + 1
if %q04% == yEs set /a score=%score% + 1
if %q04% == yeS set /a score=%score% +1
if %q04% == yES set /a score=%score% + 1
if %q04% == YeS set /a score=%score% + 1
if %q04% == YEs set /a score=%score% + 1

if %q05% == No set /a score=%score% + 1
if %q05% == NO set /a score=%score% + 1
if %q05% == n set /a score=%score% + 1
if %q05% == N set /a score=%score% + 1
if %q05% == nO set /a score=%score% + 1

if %q06% == yes set /a score=%score% + 1
if %q06% == Yes set /a score=%score% + 1
if %q06% == y set /a score=%score% + 1
if %q06% == Y set /a score=%score% + 1
if %q06% == yEs set /a score=%score% + 1
if %q06% == yeS set /a score=%score% +1
if %q06% == yES set /a score=%score% + 1
if %q06% == YeS set /a score=%score% + 1
if %q06% == YEs set /a score=%score% + 1

if %q07% == No set /a score=%score% + 1
if %q07% == NO set /a score=%score% + 1
if %q07% == n set /a score=%score% + 1
if %q07% == N set /a score=%score% + 1
if %q07% == nO set /a score=%score% + 1

if %q08% == yes set /a score=%score% + 1
if %q08% == Yes set /a score=%score% + 1
if %q08% == y set /a score=%score% + 1
if %q08% == Y set /a score=%score% + 1
if %q08% == yEs set /a score=%score% + 1
if %q08% == yeS set /a score=%score% +1
if %q08% == yES set /a score=%score% + 1
if %q08% == YeS set /a score=%score% + 1
if %q08% == YEs set /a score=%score% + 1

if %q09% == yes set /a score=%score% + 1
if %q09% == Yes set /a score=%score% + 1
if %q09% == y set /a score=%score% + 1
if %q09% == Y set /a score=%score% + 1
if %q09% == yEs set /a score=%score% + 1
if %q09% == yeS set /a score=%score% +1
if %q09% == yES set /a score=%score% + 1
if %q09% == YeS set /a score=%score% + 1
if %q09% == YEs set /a score=%score% + 1

if %q10% == yes set /a score=%score% + 1
if %q10% == Yes set /a score=%score% + 1
if %q10% == y set /a score=%score% + 1
if %q10% == Y set /a score=%score% + 1
if %q10% == yEs set /a score=%score% + 1
if %q10% == yeS set /a score=%score% +1
if %q10% == yES set /a score=%score% + 1
if %q10% == YeS set /a score=%score% + 1
if %q10% == YEs set /a score=%score% + 1

if %q11% == No set /a score=%score% + 1
if %q11% == NO set /a score=%score% + 1
if %q11% == n set /a score=%score% + 1
if %q11% == N set /a score=%score% + 1
if %q11% == nO set /a score=%score% + 1

if %q12% == yes set /a score=%score% + 1
if %q12% == Yes set /a score=%score% + 1
if %q12% == y set /a score=%score% + 1
if %q12% == Y set /a score=%score% + 1
if %q12% == yEs set /a score=%score% + 1
if %q12% == yeS set /a score=%score% +1
if %q12% == yES set /a score=%score% + 1
if %q12% == YeS set /a score=%score% + 1
if %q12% == YEs set /a score=%score% + 1

if %q13% == No set /a score=%score% + 1
if %q13% == NO set /a score=%score% + 1
if %q13% == n set /a score=%score% + 1
if %q13% == N set /a score=%score% + 1
if %q13% == nO set /a score=%score% + 1

if %q14% == yes set /a score=%score% + 1
if %q14% == Yes set /a score=%score% + 1
if %q14% == y set /a score=%score% + 1
if %q14% == Y set /a score=%score% + 1
if %q14% == yEs set /a score=%score% + 1
if %q14% == yeS set /a score=%score% +1
if %q14% == yES set /a score=%score% + 1
if %q14% == YeS set /a score=%score% + 1
if %q14% == YEs set /a score=%score% + 1

if %q15% == yes set /a score=%score% + 1
if %q15% == Yes set /a score=%score% + 1
if %q15% == y set /a score=%score% + 1
if %q15% == Y set /a score=%score% + 1
if %q15% == yEs set /a score=%score% + 1
if %q15% == yeS set /a score=%score% +1
if %q15% == yES set /a score=%score% + 1
if %q15% == YeS set /a score=%score% + 1
if %q15% == YEs set /a score=%score% + 1

  echo GDS score is %score%.
