# Rem FreeDOS batch file
@echo off

echo This is Geratric Depression Scale (GDS-4). Please, answer with y for yes or n for no

set/p q01=Are you basically satisfied with your life? (y/n)
set/p q03=Do you feel that your life is empty? (y/n)
set/p q06=Are you afraid that something bad is going to happen to you? (y/n)
set/p q07=Do you feel happy most of the time? (y/n)

set score=0

if %q01% == No set /a score=%score% + 1
if %q01% == NO set /a score=%score% + 1
if %q01% == n set /a score=%score% + 1
if %q01% == N set /a score=%score% + 1
if %q01% == nO set /a score=%score% + 1


if %q03% == yes set /a score=%score% + 1
if %q03% == Yes set /a score=%score% + 1
if %q03% == y set /a score=%score% + 1
if %q03% == Y set /a score=%score% + 1
if %q03% == yEs set /a score=%score% + 1
if %q03% == yeS set /a score=%score% +1
if %q03% == yES set /a score=%score% + 1
if %q03% == YeS set /a score=%score% + 1
if %q03% == YEs set /a score=%score% + 1

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

  echo GDS score is %score%.
