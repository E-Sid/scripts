@echo off

set /p q1=Have you ever felt you should Cut down on your drinking? (yes/no):
set /p q2=Have people Annoyed you by criticizing your drinking? (yes/no):
set /p q3=Have you ever felt bad or Guilty about your drinking? (yes/no):
set /p q4=Have you ever had a drink first thing in the morning to steady your nerves or get rid of a hangover (Eye-opener)? (yes/no):

set score=0

if %q1% == yes set /a score=%score% + 1
if %q1% == Yes set /a score=%score% + 1
if %q1% == y set /a score=%score% + 1
if %q1% == Y set /a score=%score% + 1
if %q2% == yes set /a score=%score% + 1
if %q2% == Yes set /a score=%score% + 1
if %q2% == y set /a score=%score% + 1
if %q2% == Y set /a score=%score% + 1
if %q3% == yes set /a score=%score% + 1
if %q3% == Yes set /a score=%score% + 1
if %q3% == y set /a score=%score% + 1
if %q3% == Y set /a score=%score% + 1
if %q4% == yes set /a score=%score% + 1
if %q4% == Yes set /a score=%score% + 1
if %q4% == y set /a score=%score% + 1
if %q4% == Y set /a score=%score% + 1
if %score% geq 2 (
    echo Your CAGE score is %score%. This is considered positive for alcohol dependence.
) else (
    echo Your CAGE score is %score%. This is not considered positive for alcohol dependence.
)
