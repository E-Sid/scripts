# Psychiatric Assessments
_These are GNU/Linux Shell & MS-PowerShell calculator for Addenbrooke's Cognitive Examination (ACE-III), Mini-Addenbrooke's Cognitive Examination (M-ACE), Addenbrooke's Cognitive Examination - Revised (ACE-R), Montreal Cognitive Examination (MoCA), Montreal Cognitive Examination - Blind (MoCA - Blind) and Brief Psychiatric Rating Scale (BPRS)_

## Instructions of GNU/Linux Shell Script
- On bash shell terminal or TTY, or zsh, either on GNU/Linux or MacOS start terminal
- Type ./ before the file name to start the desired shell script
- ace.sh refers to Addenbrooke's Cognitive Examination (III), with M-ACE subset calculation)
- ace-r.sh refers to Addenbrooke's Cognitive Examination-R (which also calculates Mini-Mental State Examination(MMSE))
- moca.sh refers to Montreal Cognitive Examination (MoCA)
- moca-blind.sh refers Montreal Cognitive Examination - blind (MoCA - Blind)
- bprs.sh refers to Brief Psychiatric Rating Scale
### Dependencies
The shell scripts require calc

## Instructions PowerShell Script
- On MS-Windows-10 from the start menu down left search for PowerShell
- Select PowerShell ISE
- Load the programme or copy and paste it in MS-PowerShell ISE
- Press `play` button
- Answer the questions based on your assessment results
- Only numbers are entered
- After finishing the programme calculates the total ACE-III score with its subsets and displays them
- If any of the values are out of range, the programme will let you know
- You will have to restart the programme again if there was a wrong entry

## Twin Project
https://github.com/moftasa/PythonACEIIICalculator is a twin project that has both a LibreOffice spreadsheet (\*.ods) that could be filled with an automatic calculator and a Python script that works as a calculator. Simple type Python and the path of the script and it will start.

## Known Bugs
- The MS-PowerShell script does not repeat the question if you entered incorrect value (missing repeat function)rub. Otherwise, more psychiatric assessment could be updated.

## License
- This product is licensed under GPL3

