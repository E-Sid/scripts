# Psychiatric Assessments
_These are GNU/Linux Shell & MS-PowerShell calculator for Addenbrooke's Cognitive Examination (ACE-III), Mini-Addenbrooke's Cognitive Examination (M-ACE), Addenbrooke's Cognitive Examination - Revised (ACE-R),Cambridge Behavioural Inventory (CBI), Cambridge Behavioural Inventory - Revised (CBI-R), Montreal Cognitive Examination (MoCA), Montreal Cognitive Examination - Blind (MoCA - Blind), ACE-III to MMSE converter, MoCA to MMSE converter and Brief Psychiatric Rating Scale (BPRS)_

## Instructions for GNU/Linux Bash Shell Script on GNU/Linux, BSD, MacOS-X or Haiku terminal
- On bash shell terminal or TTY, or zsh, either on GNU/Linux, BSD or in MacOS-X start terminal
- Please, make sure to make the file executable by `chmod +x` filename.sh eg `chmod +x ace.sh`
- Please, type ./ before the file name to start the desired shell script
- ace-bc.sh, ace-calc.sh, and ace-echo.sh refer to Addenbrooke's Cognitive Examination (ACE-III), with Mini-ACE (M-ACE) subset calculation. ace-bs.sh also converts to MMSE score
- ace-r-bc.sh, ace-r-calc.sh, and ace-r-echo.sh refer to Addenbrooke's Cognitive Examination-R (ACE-R) (which also calculates Mini-Mental State Examination(MMSE))
- cbi-bc.sh, cbi-calc,  and cbi-echo.sh refer to Cambridge Behavioural Inventory (CBI)
- cbi-r-bc.sh, cbi-calc.sh, and cbi-echo.sh refer to Cambridge Behavioural Inventory Revised (CBI-R)
- m-ace-bc.sh, m-ace-calc, and m-ace-echo.sh refer to Mini-Addenbrooke's Cognitive Examination III (M-ACE III)
- moca-bc.sh, moca-calc.sh, and moca-echo.sh refer to Montreal Cognitive Examination (MoCA), moca-bc.sh also converts to MMSE score in addition to the MoCA score.
- moca-blind-bc.sh, moca-blind-calc.sh, and moca-blind-echo.sh refer Montreal Cognitive Examination - blind (MoCA - Blind)
- bprs-bc.sh, bprs-calc, and bprs-echo.sh refer to Brief Psychiatric Rating Scale (BPRS)
- If any of the values are out of range, the programme will let you know and will prompt you to enter a value within range
### Dependencies
The shell scripts with -bc in their names require basic calculator `bc`. most operating systems would ship with `bc` including Haiku bash terminal. The shell scripts with -calc in their names require `calc` calculator. The shell scripts with -echo in their names calculate via echo. -echo files are the most basic, possibly all of the aforementioned operating systems have and distros would ship with `echo` command, bc is the most popular calculator, and calc might not be available by default. So, user may want to check dependencies, or use the version that suits them. Each version operates more or less identical two others. It is recommended to use -bc.sh files first for calculators as they could have converters to MMSE also.

## Instructions PowerShell Script
- ace-pwsh.ps1 refers to Addenbrooke's Cognitive Examination (ACE-III), with Mini-ACE (M-ACE) subset calculation
- ace-r-pwsh.ps1 refers to Addenbrooke's Cogntive Examination -R (ACE-R) with Mini-ACE (M-ACE) and Mini-Mental State Examination (MMSE) subsets calculation
- m-ace-pwsh.ps1 refers to Mini-Addenbrooke's Cognitive Examination III (M-ACE III)
- moca-pwsh.ps1 refers to Montreal Cognitive Examination (MoCA)
- moca-blind-pwsh.ps1 refers Montreal Cognitive Examination - blind (MoCA - Blind)
- On MS-Windows from the start menu down left search for PowerShell
- Please, select PowerShell ISE
- Please, load the programme or copy ace-pwsh.ps1 and paste it in MS-PowerShell ISE
- Please, press `play` button
- Please, answer the questions based on your assessment results
- Only numbers are entered
- After finishing the programme calculates the total ACE-III score with its subsets and displays them
- If any of the values are out of range, the programme will let you know and will prompt you to enter a value within range

## Twin Project
https://github.com/moftasa/PythonACEIIICalculator is a twin project that has both a LibreOffice spreadsheet (\*.ods) that could be filled with an automatic calculator and a Python script that works as a calculator. Simple type Python and the path of the script and it will start.

## License
- This product is licensed under GPL3

