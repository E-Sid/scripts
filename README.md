# Psychiatric Assessments
_These are GNU/Linux Shell & MS-PowerShell calculator for Addenbrooke's Cognitive Examination (ACE-III), Mini-Addenbrooke's Cognitive Examination (M-ACE), Addenbrooke's Cognitive Examination - Revised (ACE-R), Montreal Cognitive Examination (MoCA), Montreal Cognitive Examination - Blind (MoCA - Blind) and Brief Psychiatric Rating Scale (BPRS)_

## Instructions for GNU/Linux Shell Script on GNU/Linux, BSD, or MacOS
- On bash shell terminal or TTY, or zsh, either on GNU/Linux or in MacOS start terminal
- Make sure to make the file executable by `chmod +x` filename.sh eg `chmod +x ace.sh`
- Type ./ before the file name to start the desired shell script
- ace.sh refers to Addenbrooke's Cognitive Examination (ACE-III), with Mini-ACE (M-ACE) subset calculation
- ace-r.sh refers to Addenbrooke's Cognitive Examination-R (which also calculates Mini-Mental State Examination(MMSE))
- moca.sh refers to Montreal Cognitive Examination (MoCA)
- moca-blind.sh refers Montreal Cognitive Examination - blind (MoCA - Blind)
- bprs.sh refers to Brief Psychiatric Rating Scale
- If any of the values are out of range, the programme will let you know and will prompt you to enter a value within range
### Dependencies
The shell scripts require calc

## Instructions PowerShell Script
- ace-pwsh.ps1 refers to Addenbrooke's Cognitive Examination (ACE-III), with Mini-ACE (M-ACE) subset calculation
- On MS-Windows from the start menu down left search for PowerShell
- Select PowerShell ISE
- Load the programme or copy ace-pwsh.ps1 and paste it in MS-PowerShell ISE
- Press `play` button
- Answer the questions based on your assessment results
- Only numbers are entered
- After finishing the programme calculates the total ACE-III score with its subsets and displays them
- If any of the values are out of range, the programme will let you know and will prompt you to enter a value within range

## Twin Project
https://github.com/moftasa/PythonACEIIICalculator is a twin project that has both a LibreOffice spreadsheet (\*.ods) that could be filled with an automatic calculator and a Python script that works as a calculator. Simple type Python and the path of the script and it will start.

## License
- This product is licensed under GPL3

