# Psychiatric Assessments
_These are GNU/Linux Shell & MS-PowerShell calculators for Addenbrooke's Cognitive Examination (ACE-III), Mini-Addenbrooke's Cognitive Examination (M-ACE), Addenbrooke's Cognitive Examination - Revised (ACE-R),Cambridge Behavioural Inventory (CBI), Cambridge Behavioural Inventory - Revised (CBI-R), Montreal Cognitive Examination (MoCA), Montreal Cognitive Examination - Blind (MoCA - Blind), Test Your Memory (TYM), ACE-III to MMSE converter, MoCA to MMSE converter, Clinical Dementia Rating, Clinical Dementia Rating + National Alzheimer's Disease Coordinating Centre (NACC) Frontotemporal Lobar Degeneration (CDR-FTLD), Abbreviated Mental Test Score (AMTS), Abbreviated Mental Test-4 (AMT4), Brief Psychiatric Rating Scale (BPRS), Hamilton Depression Rating Scale (HRSD), Health of The Nation Ouctome Scale (HoNOS), CAGE Questionnaire and ECT Dose calculator_

## Instructions for GNU/Linux Bash Shell Script on GNU/Linux, BSD, MacOS-X or Haiku terminal
- On bash shell terminal or TTY, or zsh, either on GNU/Linux, BSD or in MacOS-X start terminal
- Please, make sure to make the file executable by `chmod +x` filename.sh eg `chmod +x ace.sh`
- Please, type `./` before the file name to start the desired shell script, or `sh` command then space before the name of the shell script eg `./ace-bc.sh` or `sh ace-bc.sh`.
- `ace-bc.sh`, `ace-calc.sh`, and `ace-echo.sh` refer to Addenbrooke's Cognitive Examination (ACE-III), with Mini-ACE (M-ACE) subset calculation. `ace-bs.sh` also converts to MMSE score in addition to M-ACE.
- `ace-r-bc.sh`, `ace-r-calc.sh`, and `ace-r-echo.sh` refer to Addenbrooke's Cognitive Examination-R (ACE-R) (which also calculates Mini-Mental State Examination(MMSE))
- `ace-mmse-converter.sh` converts the results of ACE-III test to MMSE based on Matías-Guiu JA, Pytel V, Cortés-Martínez A, Valles-Salgado M, Rognoni T, Moreno-Ramos T, Matías-Guiu J. Conversion between Addenbrooke's Cognitive Examination III and Mini-Mental State Examination. Int Psychogeriatr. 2018 Aug;30(8):1227-1233. doi: 10.1017/S104161021700268X. Epub 2017 Dec 10. PMID: 29223183.
- `cbi-bc.sh`, `cbi-calc`, and `cbi-echo.sh` refer to Cambridge Behavioural Inventory (CBI)
- `cbi-r-bc.sh`, `cbi-calc.sh`, and `cbi-echo.sh` refer to Cambridge Behavioural Inventory Revised (CBI-R)
- `m-ace-bc.sh`, `m-ace-calc`, and `m-ace-echo.sh` refer to Mini-Addenbrooke's Cognitive Examination III (M-ACE III)
- `moca-bc.sh`, `moca-calc.sh`, and `moca-echo.sh` refer to Montreal Cognitive Examination (MoCA), `moca-bc.sh` also converts to MMSE score in addition to the MoCA score.
- `moca-mmse-converter.sh` converts the results of MoCA to MMSE based on van Steenoven I, Aarsland D, Hurtig H, Chen-Plotkin A, Duda JE, Rick J, Chahine LM, Dahodwala N, Trojanowski JQ, Roalf DR, Moberg PJ, Weintraub D. Conversion between mini-mental state examination, montreal cognitive assessment, and dementia rating scale-2 scores in Parkinson's disease. Mov Disord. 2014 Dec;29(14):1809-15. doi: 10.1002/mds.26062. Epub 2014 Nov 7. PMID: 25381961; PMCID: PMC4371590.
- `moca-blind-bc.sh`, `moca-blind-calc.sh`, and `moca-blind-echo.sh` refer Montreal Cognitive Examination - blind (MoCA - Blind)
- `tym-bc.sh` refers to Test Your Memory (TYM) examination.
- `amts-bc.sh` refers to Abbreviated Mental Test Score (AMTS)
- `amt4-bc` refers to Abbreviate Mental Test-4 (AMT4)
- `bprs-bc.sh`, `bprs-calc`, and `bprs-echo.sh` refer to Brief Psychiatric Rating Scale (BPRS)
- `hrsd-bs.sh`, refers to the 17-item Hamilton Depression Rating Scale (HRSD) or (HAM-D), Hamilton M. A rating scale for depression. J Neurol Neurosurg Psychiatry 1960; 23:56–62
- `honos-bc.sh` refers to the Health of the Nation Outcome Scale (HoNOS) 
- `ect-dose.sh` calculates the electroconvulsive therapy (ECT) dose according to Age-Based & Half Age-Based Formulae. Also, if one gives it the Pulse Width (PW) in millisecond (ms), Frequency in Herz (Hz), Duration in seconds (D), and current in Amperes (I). It can calculate the charge in millicoulombs (mC). eg PW: 1 ms, F 20 Hz, Duration 6, and current 0.8 A, Charge would be 192.0 mC. Due, to float nature of values, out of range prompt is of limited abilities.  
- If any of the values are out of range, the programme will let you know and will prompt you to enter a value within range
### Dependencies
The shell scripts with -bc in their names require basic calculator `bc`. most operating systems would ship with `bc` including Haiku bash terminal. The shell scripts with -calc in their names require `calc` calculator. The shell scripts with -echo in their names calculate via `echo` command. -echo files are the most basic, possibly all of the aforementioned operating systems have and distros would ship with `echo` command, `bc` is the most popular calculator, and `calc` might not be available by default. So, user may want to check dependencies, or use the version that suits them. Each version operates more or less identical two others. It is recommended to use -bc.sh files first for calculators as they are the most updated and they could have converters to MMSE also.

## Instructions PowerShell Script
- `ace-pwsh.ps1` refers to Addenbrooke's Cognitive Examination (ACE-III), with Mini-ACE (M-ACE) subset calculation
- `ace-r-pwsh.ps1` refers to Addenbrooke's Cogntive Examination -R (ACE-R) with Mini-ACE (M-ACE) and Mini-Mental State Examination (MMSE) subsets calculation
- `m-ace-pwsh.ps1` refers to Mini-Addenbrooke's Cognitive Examination III (M-ACE III)
- `moca-pwsh.ps1` refers to Montreal Cognitive Examination (MoCA)
- `moca-blind-pwsh.ps1` refers Montreal Cognitive Examination - blind (MoCA - Blind)
- `cdr-ftld-pwsh.ps1` refers to Clinical Dementia Rating + National Alzheimer's Disease Coordinating Centre (NACC) Frontotemporal Lobar Degeneration (CDR-FTLD)
- `cdr-pwsh.ps1` refers to Clinical Dementia Rating
- `ect-pwsh.ps1` refers to an electroconvulsive therapy calculator. It calculates the electroconvulsive therapy (ECT) charge according to Age-Based & Half Age-Based Formulae. Also, if one gives it the Pulse Width (PW) in millisecond (ms), Frequency in Herz (Hz), Duration in seconds (D), and current in Amperes (I). It can calculate the charge in millicoulombs (mC). eg PW: 1 ms, F 20 Hz, Duration 6, and current 0.8 A, Charge would be 192.0 mC.
- On MS-Windows from the start menu down left search for PowerShell
- Please, select PowerShell ISE
- Please, load the programme or copy ace-pwsh.ps1 and paste it in MS-PowerShell ISE
- Please, press `play` button
- Please, answer the questions based on your assessment results
- Only numbers are entered
- After finishing the programme calculates the total ACE-III, or ACE-R etc. score with its subsets _whenever possible_ and displays them
- If any of the values are out of range, the programme will let you know and will prompt you to enter a value within range.

## Platform independent
- `moca2mmse.html` is an html/JavaScript based on the conversion by Lawton et al. Credits to [Hosadeeb Adeeb Nashed](https://github.com/HosAdeeb)
- `cage.bas` is CAGE questionnaire calculator written in BASIC (FreeBASIC). One would either install FreeBasic compiler or else use [online FreeBASIC compiler](https://www.jdoodle.com/execute-freebasic-online/)

## Twin Project
[Python ACE-III Calculator](https://github.com/moftasa/PythonACEIIICalculator) is a twin project by [Mostafa Hussein Omar](https://github.com/moftasa) that has both a LibreOffice spreadsheet (\*.ods) that could be filled with an automatic calculator and a Python script that works as a calculator. Simple type Python and the path of the script and it will start.

## License
- This product is licensed under GPL3. Clinical Use is allowed by trained clinicians but it is not for commercial use. This applies only to calculators not the tests. If anyone wants to use the tests, one should check their license as well.

