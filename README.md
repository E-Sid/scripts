# Psychiatric & Cardiovascular Assessments
_These are mostly GNU/Linux BASH Shell & MS-PowerShell calculators for Cognitive tests, psychiatric rating scales, cardiovascular calculators. Some calculators are platform independent (REXX, FreeBASIC), and other FreeDOS-Batch files that can run under FreeDOS_. They are:

## Cognitive Tests:
 - Addenbrooke's Cognitive Examination (ACE-III): `ace-iii.sh`,`ace-bc.sh`, `ace-calc.sh`, `ace-echo.sh`, & `ace-pwsh.ps1`
 - Addenbrooke's Cognitive Examination - Revised (ACE-R): `ace-r-bc.sh`, `ace-r-calc.sh`, `ace-r-echo.sh`, & `ace-r-pwsh.ps1`
 - Mini-Addenbrooke's Cognitive Examination (M-ACE): `m-ace-bc.sh`, `m-ace-calc`, `m-ace-echo.sh`, and `m-ace-pwsh.ps1`
 - ACE-III to MMSE converter: `ace-mmse-converter.sh`
 - Cambridge Behavioural Inventory (CBI): `cbi-bc.sh`, `cbi-calc`, & `cbi-echo.sh`, 
 - Cambridge Behavioural Inventory - Revised (CBI-R): `cbi-r-bc.sh` `cbi-r-calc.sh`, `cbi-r-echo.sh`, & `cbi-r-pwsh.ps1`
 - Montreal Cognitive Examination (MoCA): `moca-bc.sh`, `moca-calc.sh`, `moca-echo.sh` & `moca-pwsh.ps1`
 - Montreal Cognitive Examination - Blind (MoCA - Blind): `moca-blind-bc.sh`, `moca-blind-calc.sh`, `moca-blind-echo.sh`, & `moca-blind-pwsh.ps1`
 - MoCA to MMSE converter: `moca2mmse.html`, `moca-mmse-converter.sh` 
 - Test Your Memory (TYM): `tym-bc.sh`
 - Clinical Dementia Rating Scale `cdr-pwsh.ps1`
 - Clinical Dementia Rating, Clinical Dementia Rating + National Alzheimer's Disease Coordinating Centre (NACC) Frontotemporal Lobar Degeneration (CDR-FTLD): `cdr-ftld-pwsh.ps1`
 - Abbreviated Mental Test Score (AMTS): `amts-bc.sh`
 - Abbreviated Mental Test-4 (AMT4): `amt4-bc.sh` & `amt4.bas`
 - Mini-Cog Test: `mini-cog.bas`
 - Assessment test for delirium & cognitive impairment (4AT): `4at.rexx`
 - Hacinski Ischaemic Score (HIS): `his.rexx`
 - Dementia Severity Rating Scale (DSRS): `dsrs.rexx`
 - The Short Portable Mental Status Questionnaire (SPMSQ) `spmsq.rexx`
 
 ## Psychiatric Rating Scales
- Brief Psychiatric Rating Scale (BPRS): `bprs-bc.sh`, `bprs-calc`, and `bprs-echo.sh`
- Hamilton Depression Rating Scale (HRSD): `hrsd-bs.sh`
- Health of The Nation Ouctome Scale (HoNOS): `honos-bc.sh`
- CAGE Questionnaire: `cage.bas`
- Alcohol Use Disorders Identification Test (AUDIT) calculator: `audit.rexx`
- ECT Age-based and Dose calculator: `ect-dose.sh`, & `ect-age.bat`
- ECT Charge calculator: `ect-charge-bc.sh`
- ECT Ohm's law `ohms-law.rexx`, `ohms-law.bas`
- ECT Power Calculator in watts `power.rexx`
- ECT Energy Calculator in joules `energy.rexx`
- Generalised Anxiety Disroder (GAD-7) Assessment: `gad7-bc.sh`
- Patient Health Questionnaire (PHQ-9) Depression: `phq9-bc.sh`

## Cardiovascular Calculators
- Hip-Waiste Ratio calculator: `hip-waiste.rexx`
- QTc Interval calculator: `qtc.bas`
- Mean Arterial Blood Pressure calculator (MAP): `map.bas`, `map.py`, & `map.rexx`
- Cardiac Output calculator: `cardiac.bat`
- Body Mass Index (BMI) calculator: `bmi.bas` (metric calculator), `bmi.rexx`, `bmi.py`, `bmi-pwsh.ps1` & `bmi-lb-inch.bas` (imperial calculator)
- Maximum Heart Rate (MHR) calculator `mhr.rexx`, `mhr.bat`, `mhr.bas`, `mhr.sh`, `mhr.py`

## Guide to file extensions
- `.sh` files refer to BASH Shell scripts which could be used GNU/Linux Bash Shell Script on GNU/Linux, BSD, MacOS-X, or Haiku
- `.ps1` files refer to MS-PowerShell works under Mircosoft Windows, and works under GNU/Linux Bash Shell (if Ms-PowerShell is installed)
- `.html` files refer to platform independent that works on any browser that can run Javascript
- `.bat` files are batch files that run under FreeDOS, and could be used on MS-Windows command prompt `cmd.exe`
- `.bas` files are BASIC files that run under FreeBASIC which could be installed on GNU/Linux or MS-Windows or run online on a browser
- `.rexx` files refer to REXX files which are platform independent, they run under Unix, Amiga & Amiga-like OS (eg Amiga OS4, MorphOS & AROS), they can run under GNU/Linux if REXX is installed

## General Instructions
- In all the files. You can type the entry (numerical number) and press ENTER (Return)
- If you do not have a compiler for the scripting language used, you can use an online compiler via a web browser as [JDoodle](https://www.jdoodle.com/) or [Tutorials Point ](https://www.tutorialspoint.com) and select the scripting language of your choice.

## Instructions for GNU/Linux Bash Shell Script on GNU/Linux, BSD, MacOS-X or Haiku
- In Bash shell TTY, or terminal either in GNU/Linux, BSD, MacOS-X, or Haiku start terminal
- Please, make sure to make the file executable by `chmod +x` filename.sh eg `chmod +x ace.sh`
- Please, type `./` before the file name to start the desired shell script, or `sh` command then space before the name of the shell script eg `./ace-bc.sh` or `sh ace-bc.sh`.
- `ace-iii.sh`, `ace-bc.sh`, `ace-calc.sh`, and `ace-echo.sh` refer to Addenbrooke's Cognitive Examination (ACE-III), with Mini-ACE (M-ACE) subset calculation. `ace-iii.sh` has extensive data validation it is failsafe to use. It uses `bc` and converts to MMSE score in addition to M-ACE.
- `ace-r-bc.sh`, `ace-r-calc.sh`, and `ace-r-echo.sh` refer to Addenbrooke's Cognitive Examination-R (ACE-R) (which also calculates Mini-Mental State Examination(MMSE))
- `ace-mmse-converter.sh` converts the results of ACE-III test to MMSE based on Matías-Guiu JA, Pytel V, Cortés-Martínez A, Valles-Salgado M, Rognoni T, Moreno-Ramos T, Matías-Guiu J. Conversion between Addenbrooke's Cognitive Examination III and Mini-Mental State Examination. Int Psychogeriatr. 2018 Aug;30(8):1227-1233. doi: 10.1017/S104161021700268X. Epub 2017 Dec 10. PMID: 29223183.
- `cbi-bc.sh`, `cbi-calc`, and `cbi-echo.sh` refer to Cambridge Behavioural Inventory (CBI)
- `cbi-r-bc.sh`, `cbi-r-calc.sh`, and `cbi-r-echo.sh` refer to Cambridge Behavioural Inventory Revised (CBI-R)
- `m-ace-bc.sh`, `m-ace-calc`, and `m-ace-echo.sh` refer to Mini-Addenbrooke's Cognitive Examination III (M-ACE III)
- `moca-bc.sh`, `moca-calc.sh`, and `moca-echo.sh` refer to Montreal Cognitive Examination (MoCA), `moca-bc.sh` also converts to MMSE score in addition to the MoCA score.
- `moca-mmse-converter.sh` converts the results of MoCA to MMSE based on van Steenoven I, Aarsland D, Hurtig H, Chen-Plotkin A, Duda JE, Rick J, Chahine LM, Dahodwala N, Trojanowski JQ, Roalf DR, Moberg PJ, Weintraub D. Conversion between mini-mental state examination, montreal cognitive assessment, and dementia rating scale-2 scores in Parkinson's disease. Mov Disord. 2014 Dec;29(14):1809-15. doi: 10.1002/mds.26062. Epub 2014 Nov 7. PMID: 25381961; PMCID: PMC4371590.
- `moca-blind-bc.sh`, `moca-blind-calc.sh`, and `moca-blind-echo.sh` refer Montreal Cognitive Examination - blind (MoCA - Blind)
- `tym-bc.sh` refers to Test Your Memory (TYM) examination.
- `amts-bc.sh` refers to Abbreviated Mental Test Score (AMTS)
- `amt4-bc.sh` refers to Abbreviated Mental Test-4 (AMT4)
- `bprs-bc.sh`, `bprs-calc`, and `bprs-echo.sh` refer to Brief Psychiatric Rating Scale (BPRS)
- `hrsd-bs.sh`, refers to the 17-item Hamilton Depression Rating Scale (HRSD) or (HAM-D), Hamilton M. A rating scale for depression. J Neurol Neurosurg Psychiatry 1960; 23:56–62
- `honos-bc.sh` refers to the Health of the Nation Outcome Scale (HoNOS) 
- `gad7-bc.sh` refers to GAD-7
- `phq9-bc.sh` refers to PHQ-9
- `mhr.sh` refers to Maximum Heart Rate (MHR) Calculator
- `ect-dose.sh` calculates the electroconvulsive therapy (ECT) dose according to Age-Based & Half Age-Based Formulae. 
- `ect-charge-bc.sh` refers to ECT charge calculator if one gives it the Pulse Width (PW) in millisecond (ms), Frequency in Herz (Hz), Duration in seconds (D), and current in Amperes (I). It can calculate the charge in millicoulombs (mC). eg PW: 1 ms, F 20 Hz, Duration 6, and current 0.8 A, Charge would be 192.0 mC. 
- If any of the values are out of range, the programme will let you know and will prompt you to enter a value within range
### Dependencies
The shell scripts with -bc in their names require basic calculator `bc`. most operating systems would ship with `bc` including Haiku bash terminal. The shell scripts with -calc in their names require `calc` calculator. The shell scripts with -echo in their names calculate via `echo` command. -echo files are the most basic, possibly all of the aforementioned operating systems have and distros would ship with `echo` command, `bc` is the most popular calculator, and `calc` might not be available by default. So, user may want to check dependencies, or use the version that suits them. Each version operates more or less identical two others. It is recommended to use -bc.sh files first for calculators as they are the most updated and they could have converters to MMSE also.

## Instructions for PowerShell Script
- `ace-pwsh.ps1` refers to Addenbrooke's Cognitive Examination (ACE-III), with Mini-ACE (M-ACE) subset calculation
- `ace-r-pwsh.ps1` refers to Addenbrooke's Cogntive Examination -R (ACE-R) with Mini-ACE (M-ACE) and Mini-Mental State Examination (MMSE) subsets calculation
- `bmi-pwsh.ps1` refers to metric Body Mass Index
- `m-ace-pwsh.ps1` refers to Mini-Addenbrooke's Cognitive Examination III (M-ACE III)
- `moca-pwsh.ps1` refers to Montreal Cognitive Examination (MoCA)
- `moca-blind-pwsh.ps1` refers to Montreal Cognitive Examination - blind (MoCA - Blind)
- `cbi-r-pwsh.ps1` refers to Cambridge Behavioural Inventory Revised (CBI-R)
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
### HTML/JavaScript
- `moca2mmse.html` is an HTML/JavaScript based on the conversion by Lawton et al. Credits to [Hosadeeb Adeeb Nashed](https://github.com/HosAdeeb)

### FreeBASIC
One would either install FreeBasic compiler +/- IDE or else use [online FreeBASIC compiler](https://www.jdoodle.com/execute-freebasic-online/)
- `cage.bas` is CAGE questionnaire calculator written in BASIC (FreeBASIC). 
- `amt4.bas` refers to Abbreviated Mental Test-4 (AMT4)
- `bmi.bas` is Body Mass Index (BMI) calculator in kilograms and meter, `bmi-lb-inch.bas` calculates BMI in pounds and inches 
- `qtc.bas` is QTc Interval calculator according to Bazett, Framingham, and, Hodges formulae. Bazett is the most commonly used.
- `map.bas` is Mean Arterial Blood Pressure Calculator. 
- `mini-cog.bas` refers to Mini-Cog test.
- `mhr.bas` refers to Maximum Heart Rate (MHR) Calculator.
- `ohms-law.bas` refers to ECT Ohm's law

### REXX
These scripts are written in REXX. It could be used for z/OS, Unix, GNU/Linux (via Regina-REXX), Amiga OS (via ARexx) and other AmigaOS related OS (AROS, MorphOS etc.), or OS/2
- `audit.rexx` refers to Alcohol Use Disorders Identification Test (AUDIT).
- `bmi.rexx` is a BMI calculator.
- `hip-waiste.rexx` refers to hip-waiste ratio calculator.
- `4at.rexx` refers to 4AT test.
- `his.rexx` refers to Hachinski Ischaemic Score (HIS).
- `dsrs.rexx` refers to Dementia Severity Rating Scale (DSRS).
- `mhr.rexx` refers to Maximum Heart Rate (MHR) Calculator.
- `spmsq.rexx` refers to  The Short Portable Mental Status Questionnaire (SPMSQ)
- `ohms-law.rexx` refers to ECT Ohm's law
- `power.rexx` refers to ECT Power Calculator in watts
- `map.rexx` refers to mean arterial blood pressure calculator
- `energy.rexx` refers to ECT energy calculator in joules

## FreeDOS
- `ect-age.bat` refers to ECT dose calculation via Age-Based Method & Half Age-Based Method.
- `cardiac.bat` refers to cardiac output calculator.
- `mhr.bat` refers to Maximum Heart Rate.


## Twin Project
[Python ACE-III Calculator](https://github.com/moftasa/PythonACEIIICalculator) is a twin project by [Mostafa Hussein Omar](https://github.com/moftasa) that has both a LibreOffice spreadsheet (\*.ods) that could be filled with an automatic calculator and a Python script that works as a calculator. Simple type Python and the path of the script and it will start.

## Disclaimer
Mean arterial blood pressure, QTc interval calculator, Cardiac output offer only one way of calculation and should be used for general guidance only. Please note that this codes here are just examples, calculations should only be performed by trained healthcare professionals. The formulae used here is just an estimate and the actual cardiovascular calculations can vary based on individual factors such as fitness level and health conditions. For psychiatric calculators, the interpretations of severity is not added as the score should not be interpreted as a marker of severity of illness in isolation from a clinical context. These are not substitutes to assessment by a health care professional.

## Declaration of Interest
- None, these are intended as aides to help with calculation of psychometric and cardiovascular assessments. They are licensed under GPL and are free to use.
- These are not the tests, they only are calculators to score the tests, examinations and assessments.

## License
- This product is licensed under GPL3. Clinical Use is allowed by trained clinicians but it is not for commercial use. This applies only to calculators not the tests. If anyone wants to use the tests, one should check their license as well.

