# Psychiatric, A&E, and Cardiovascular Assessments Calculators
_These are mostly GNU/Linux [BASH Shell](https://www.gnu.org/software/bash/), AWK, [Perl](https://www.perl.org/), Sed & [MS-PowerShell](https://learn.microsoft.com/en-gb/powershell/) calculator scripts for cognitive tests, psychiatric rating scales, cardiovascular calculators. Some calculators are platform independent (Perl, [REXX](https://www.rexxla.org/), [FreeBASIC](https://www.freebasic.net/), and other Batch files for [FreeDOS](https://www.freedos.org/)_. _Some scripts are designed for GNU/Linux and other POSIX compatible OS, others are geared to MS-PowerShell, and some others eg platform independent eg Perl._ 

# Rationale
Medical calculators help provide numerical values which makes quantification, and tracking of progress easier. Medicine is not a pure scientific endeavour, hence, some medical calculators esp. measuring depression severity etc. attempt to put a numerical value to a subjective experience. At present, there are available calculators online however, they do not cover every thing. They tend to require GUI, online connection, and modern web-browser. The aim of these calculators and algorithms is to provide a simple minimalist effecient command-line interface (CLI) scripts which could work in a shell, or terminal. These tests do not require GUI or online connection (*apart from downloading them*). The current scripts aim to cover multiple platforms eg \*nix (Unix, BSD, GNU/Linux), \*nix/BSD derivatives eg MacOS, platforms that have POSIX compliance layer eg [Haiku](https://www.haiku-os.org/), as well as other operating systems eg FreeDOS & MS-Windows, as well as other platform independent calculators and algorithms. Also, users have access to the source code, so they are welcome to study, improve, and copy the design for other tests under GNU/GPL-3 license.

# Coding Principles
The general guiding concept is that these codes offer more than just a calculator. They print a report that could be copied from a terminal, or could be saved to a file. They calculate subscores, and they have data validation for each parameter with loops to guard against accidental typos. Also, in case of subscores, there are `if` statements to make sure that the score entered is logical eg. in ACE-III if someone scores 4/5 in orientation in time. The test will ask about score for Mini-ACE which is out of 4. Logically, the result could be only 4 or 3. If the ACE-III orientation in time score is 1, the Mini-ACE would only be 1 or 0. The code makes sure that the results are coherent in that sense. The same principle guides registration & recall; one cannot recall, what one did not register. `while` loops ensure that values entered are within the accepted range only to minimise the GIGO effect. 

*List of scripts*

## Cognitive Tests:
 - Addenbrooke's Cognitive Examination (ACE-III): `ace.pl` (most up-to-date, with ACE to MMSE converter),  `ace-iii-bc.sh` (most up-to-date in shell scripts), `ace-bc.sh`, `ace-calc.sh`, `ace-echo.sh`, & `ace-pwsh.ps1`
 - Addenbrooke's Cognitive Examination - Revised (ACE-R): `acer.pl`, `ace-r-bc.sh`, `ace-r-calc.sh`, `ace-r-echo.sh`, & `ace-r-pwsh.ps1`, `ace-nosave.pl`
 - Mini-Addenbrooke's Cognitive Examination (M-ACE): `m-ace-bc.sh`, `mace.sh`, `m-ace-calc.sh`, `m-ace-echo.sh`, and `m-ace-pwsh.ps1`
 - ACE-III to MMSE converter: `ace2mmse.pl`, `ace-mmse-converter.sh`
 - Abbreviated Mental Test Score (AMTS): `amts-bc.sh`, `amts.pl`
 - Abbreviated Mental Test-4 (AMT4): `amt4.pl`, `amt4-bc.sh` & `amt4.bas`
 - Assessment test for delirium & cognitive impairment (4AT): `4at.rexx`, `4at.pl`
 - Assessment of Parkinsonism: `updrs.pl`
 - Cambridge Behavioural Inventory (CBI): `cbi-bc.sh`, `cbi-calc.sh`, & `cbi-echo.sh`, 
 - Cambridge Behavioural Inventory - Revised (CBI-R): `cbi-r-bc.sh` `cbi-r-calc.sh`, `cbi-r-echo.sh`, & `cbi-r-pwsh.ps1`
 - Clinical Dementia Rating Scale `cdr-pwsh.ps1`, `cdr.awk`, `cdr.pl`
 - Clinical Dementia Rating, Clinical Dementia Rating + National Alzheimer's Disease Coordinating Centre (NACC) Frontotemporal Lobar Degeneration (CDR-FTLD): `cdr-ftld-pwsh.ps1`, `cdr-ftld.pl`
 - Dementia Severity Rating Scale (DSRS): `dsrs.rexx`
 - Free-Cog Examination (Free-Cog): `free-cog-bc.sh`
 - Frontal Assessment Battery (FAB): `fab.pl`, `fab-bc.sh` Bubois, B. ; Litvan, I.; The FAB: A frontal assessment battery at bedside. _Neurology_. 55(11):1621-1626, 
 - Hachinski Ischaemic Score (HIS): `his.rexx`, `his.pl`
 - Informant Questionnaire on Cognitive Decline in the Elderly (IQCODE): `iqcode.pl`
 - Retrospective Form of the Informant Questionnaire on Cognitive Decline in the Elderly (Retrospective IQCODE): `iqcoder.pl`
 - Informant Questionnaire on Cognitive Decline in the Elderly (IQCODE - Short): `iqcodes.pl`
 - Mini-Cog Test: `mini-cog.bas`, `minicog.pl`
 - Mini-Mental State Examination Calculator (MMSE): `mmse.pl`
 - Montreal Cognitive Examination (MoCA): `moca-bc.sh`, `moca-calc.sh`, `moca-echo.sh` & `moca-pwsh.ps1`
 - Montreal Cognitive Examination - Blind (MoCA - Blind): `moca-blind-bc.sh`, `moca-blind-calc.sh`, `moca-blind-echo.sh`, & `moca-blind-pwsh.ps1`
 - Montreal Cognitive Examination (MocA) Memory Score Index (MIS): `moca-mis.awk`, `moca-mis.pl`
 - MoCA to MMSE converter: `moca2mmse.html`, `moca-mmse-converter.sh` 
 - Montreal Cognitive Assessment 5-minute protocol (MoCA 5-min protocol) `moca-5-min.awk` `moca-5-min.pl`
 - The Rowlan Universal Dementia Assessment Scale (RUDAS): A Multicultural Cognitive Assessment Scale `rudas-bs.sh` (Storey et al, 2004) International Psychogeriatrics, 16(1), 13-31
 - The Short Portable Mental Status Questionnaire (SPMSQ) `spmsq.rexx`
 - Test Your Memory (TYM): `tym-bc.sh`
 
 
 ## Diagnostic algorithms
 - Dementia algorithm from the [WHO mhGAP](https://www.who.int/publications/i/item/9789241549790) version 2.0 website `mhgap-dementia.awk`, `mhgap.pl`.
 
 ## Psychiatric Rating Scales
- Alcohol Use Disorders Identification Test (AUDIT) calculator: `audit.pl`, `audit.rexx`
- Beck Anxiety Inventory (BAI) calculator: `bai.pl`
- Beck Depression Inventory (BDI) score calculator: `bdi.pl`
- Brief Psychiatric Rating Scale (BPRS): `bprs.pl`, `bprs-bc.sh`, `bprs-calc.sh`, and `bprs-echo.sh`
- CAGE Questionnaire: `cage.pl`, `cage.bas`, `cage.bat`
- Calgary Depression Scale for Schizophrenia (CDSS): `cdss.pl`
- Electroconvulsive Therapy (ECT) Age-based and Dose calculator: `ect-age.awk`, `ect-dose.sh`, `ect-age.pl` & `ect-age.bat`
- ECT charge & titration calculator: `ect-charge.awk`, `ect-charge.pl`
- ECT dosing formulae and equations' calculator: `ect-formulae.awk`. `ect-formulae.pl`
- Ohm's law `ohms-law.rexx`, `ohms-law.bas`
- ECT Power Calculator in watts `power.rexx`
- ECT Energy Calculator in joules `energy.rexx`
- Generalised Anxiety Disroder (GAD-7) Assessment: `gad7.pl`, `gad7-bc.sh`
- Geriatric Depression Scale (15-item) (GDS-15) `gds-15.bat`
- Geriatric Depression Scale (4-item) (GDS-4) `gds-4.bat`
- Hamilton Anxiety Rating Scale (HAM-A): `hama.pl`
- Hamilton Depression Rating Scale (HRSD): `hrsd-bs.sh`
- Health of The Nation Ouctome Scale (HoNOS): `honos.pl`, `honos-bc.sh`
- Montgomery-Åsberg Depression Rating Scale (MADRS) Total Score Calculator: `madrs.pl`
- Patient Health Questionnaire (PHQ-9) Depression: `phq9.pl`, `phq9-bc.sh`
- Rating Anxiety in Dementia (RAID): `raid.pl`
- Repetitive Transcranial Magnetic Stimulation (rTMS) dose calculator: `rtms.awk`. `rtms.pl`
- SADPERSONS scale calculator: `sadpersons.pl`
- Work & Social Adjustment Scale: `wsas.pl`

## A&E Calculators
- AVPU score: `avpu2gcs.awk` `avpu.bat` and `avpu.sh`
- AVPU to GCS converter: `avpu2gcs.awk`,`avpu2gcs.bat`, `avpu.pl` and `avpu.sh`
- GCS to AVPU score converter `gcs2avpu.sh`
- Glasgow Coma Scale Calcultator (GCS) `gcs-echo.sh`this also converts from GCS to AVPU score

## Cardiovascular Calculators
- Body Mass Index (BMI) calculator: `bmi.awk`,`bmi.bas` (metric calculator), `bmi.rexx`, `bmi.py`, `bmi-pwsh.ps1` & `bmi-lb-inch.bas` (imperial calculator), `bmi.pl`
- Cardiac Output calculator: `cardiac-output.awk`, `cardiac.bat` & `cardiac-output.pl`
- Fahrenheit to Celsius: Temperature scale converter: `celsius.pl` 
- Hip-Waiste Ratio calculator: `hip-waist.awk`, `hip-waist.pl` & `hip-waiste.rexx`
- Kilogram(s) to pound(s) converter: `kg2lb.awk`, `kg2lb.pl`
- Kilogram(s) to stone(s) converter: `kg2st.awk`, `kg2st.pl
- Mean Arterial Blood Pressure calculator (MAP): `map.awk`, `map.bas`, `map.pl`, `map.py`, & `map.rexx`
- Maximum Heart Rate (MHR) calculator `mhr.rexx`, `mhr.bat`, `mhr.bas`, `mhr.sh`, `mhr.py`, `mhr.js`, `mhr.awk`, `mhr.pl`
- Target Heart Rate (THR) calculator `thr.pl`according to [CDC](https://www.cdc.gov/physicalactivity/basics/measuring/heartrate.htm)
- Pounds to kilograms converter: `lb2kg.awk`, `lb2kg.pl`
- QTc Interval calculator: `qtc.awk`, `qtc.pl` (calculates Bazett, Fridericia, Hodges (different calculations), Framingham, Rautaharju, Dmitrienko. `qtc.bas`: is less extensive
- Stone to kilogram converter: `st2kg.awk`, `st2kg.pl`

## Report writing helper
- `neutralise.sed` & `neutralise.pl` attempt to change the language of a report or a letter to be more gender neutral, with respect to pronouns, jobs and relationships.

## Guide to file extensions
- `.awk` files refer to AWK programming language, they run under Unix, GNu/Linux, BSD, MacOS, Haiku.
- `.bas` files are BASIC files that run under FreeBASIC which could be installed on GNU/Linux or MS-Windows or run online on a browser
- `.bat` files are batch files that run under FreeDOS, and could be used on MS-Windows command prompt `cmd.exe`
- `.html` files refer to platform independent that works on any browser that can run Javascript
- `.pl` files refer to Perl files, they are platform independent, and come prebundled in GNU/Linux distros.
- `.ps1` files refer to MS-PowerShell works under Mircosoft Windows, and works under GNU/Linux Bash Shell (if Ms-PowerShell is installed)
- `.rexx` files refer to REXX files which are platform independent, they run under Unix, Amiga & Amiga-like OS (eg Amiga OS4, MorphOS & AROS), they can run under GNU/Linux if REXX is installed
- `.sh` files refer to BASH Shell scripts which could be used GNU/Linux Bash Shell Script on GNU/Linux, BSD, MacOS-X, or Haiku
- `.sed` files are stream editor files that work in GNU/Linux, BSD, MacOS-X, or Haiku

## General Instructions
- In all the files. You can type the entry (numerical number) and press `ENTER` (Return)
- If you do not have a compiler for the scripting language used, you can use an online compiler via a web browser as [JDoodle](https://www.jdoodle.com/) or [Tutorials Point ](https://www.tutorialspoint.com) and select the scripting language of your choice.
- If there is the same calculator in AWK &/or and other language, AWK & Perl scripts are the more comprehensive and up-to-date
- If there are different versions of a calculator in BASH Shell Script `filename-bc.sh` would be the most up-to-date

## Instructions for GNU/Linux Bash Shell Script on GNU/Linux, BSD (FreeBSD, OpenBSD, NetBSD), Unix, MacOS-X or Haiku
- In Bash shell TTY, or terminal either in GNU/Linux, BSD, MacOS-X, or Haiku start terminal
- Please, make sure to make the file executable by `chmod +x` filename.sh eg `chmod +x ace.sh`
- Please, type `./` before the file name to start the desired shell script, or `sh` command then space before the name of the shell script eg `./ace-bc.sh` or `sh ace-bc.sh`.
- `filename-bc.sh` are usually the most up-to-date files.
### List of BASH Shell Scripts
- `ace-iii.sh`, `ace-bc.sh`, `ace-calc.sh`, and `ace-echo.sh` refer to Addenbrooke's Cognitive Examination (ACE-III), with Mini-ACE (M-ACE) subset calculation. `ace-iii.sh` has extensive data validation it is failsafe to use. It uses `bc` and converts to MMSE score in addition to M-ACE.
- `ace-r-bc.sh`, `ace-r-calc.sh`, and `ace-r-echo.sh` refer to Addenbrooke's Cognitive Examination-R (ACE-R) (which also calculates Mini-Mental State Examination(MMSE))
- `ace-mmse-converter.sh` converts the results of ACE-III test to MMSE based on Matías-Guiu JA, Pytel V, Cortés-Martínez A, Valles-Salgado M, Rognoni T, Moreno-Ramos T, Matías-Guiu J. Conversion between Addenbrooke's Cognitive Examination III and Mini-Mental State Examination. _Int Psychogeriatr._ 2018 Aug;30(8):1227-1233. doi: 10.1017/S104161021700268X. Epub 2017 Dec 10. PMID: 29223183.
- `cbi-bc.sh`, `cbi-calc.sh`, and `cbi-echo.sh` refer to Cambridge Behavioural Inventory (CBI)
- `cbi-r-bc.sh`, `cbi-r-calc.sh`, and `cbi-r-echo.sh` refer to Cambridge Behavioural Inventory Revised (CBI-R)
- `free-cog-bc.sh` refers to Free-Cog Examination [Free-Cog](https://psychscenehub.com/wp-content/uploads/2021/03/FInal-Free-Cog-Tool-1.pdf). [Reference]( https://doi.org/10.1002/gps.5454)
- `m-ace-bc.sh`, `m-ace-calc.sh`, and `m-ace-echo.sh` refer to Mini-Addenbrooke's Cognitive Examination III (M-ACE III)
- `moca-bc.sh`, `moca-calc.sh`, and `moca-echo.sh` refer to Montreal Cognitive Examination (MoCA), `moca-bc.sh` also converts to MMSE score in addition to the MoCA score.
- `moca-mmse-converter.sh` converts the results of MoCA to MMSE based on van Steenoven I, Aarsland D, Hurtig H, Chen-Plotkin A, Duda JE, Rick J, Chahine LM, Dahodwala N, Trojanowski JQ, Roalf DR, Moberg PJ, Weintraub D. Conversion between mini-mental state examination, Montreal cognitive assessment, and dementia rating scale-2 scores in Parkinson's disease. _Mov Disord._ 2014 Dec;29(14):1809-15. doi: 10.1002/mds.26062. Epub 2014 Nov 7. PMID: 25381961; PMCID: PMC4371590.
- `amts-bc.sh` refers to Abbreviated Mental Test Score (AMTS)
- `amt4-bc.sh` refers to Abbreviated Mental Test-4 (AMT4)
- `avpu.sh` refers top AVPU score calculator and convrter to GCS- `bprs-bc.sh`, `bprs-calc.sh`, and `bprs-echo.sh` refer to Brief Psychiatric Rating Scale (BPRS)
- `ect-dose.sh` calculates the electroconvulsive therapy (ECT) dose according to Age-Based & Half Age-Based Formulae. 
- `ect-charge-bc.sh` refers to ECT charge calculator if one gives it the Pulse Width (PW) in millisecond (ms), Frequency in Herz (Hz), Duration in seconds (D), and current in Amperes (I). It can calculate the charge in millicoulombs (mC). eg PW: 1 ms, F 20 Hz, Duration 6, and current 0.8 A, Charge would be 192.0 mC. 
- `fab-bc.sh` refers to Frontal Assessment Battery (FAB)
- `gad7-bc.sh` refers to GAD-7
- `gcs-echo.sh` refers to Glasgow Comas Scale Calculator (GCS)
- `gcs2avpu.sh` refers to GCS to AVPU score converter
- `honos-bc.sh` refers to the Health of the Nation Outcome Scale (HoNOS) 
- `hrsd-bs.sh`, refers to the 17-item Hamilton Depression Rating Scale (HRSD) or (HAM-D), Hamilton M. A rating scale for depression. J Neurol Neurosurg Psychiatry 1960; 23:56–62
- `mhr.sh` refers to Maximum Heart Rate (MHR) Calculator
- `moca-blind-bc.sh`, `moca-blind-calc.sh`, and `moca-blind-echo.sh` refer to Montreal Cognitive Examination - blind (MoCA - Blind)
- `phq9-bc.sh` refers to PHQ-9
- `rudas-bs.sh` refers to The Rowlan Universal Dementia Assessment Scale (RUDAS)
- `tym-bc.sh` refers to Test Your Memory (TYM) examination.
- If any of the values are out of range, the programme will let you know and will prompt you to enter a value within range

### Dependencies
The shell scripts with `-bc` in their names require basic calculator `bc`. Most GNU/Lnux distros would ship with `bc` including Haiku bash terminal. The shell scripts with -calc in their names require `calc` calculator. The shell scripts with -echo in their names calculate via `echo` command. `-echo` files are the most basic, possibly all of the aforementioned operating systems have and distros would ship with `echo` command, `bc` is the most popular calculator, and `calc` might not be available by default. So, user may want to check dependencies, or use the version that suits them. Each version operates more or less identical two others. It is recommended to use `-bc.sh` files first for calculators as they are the most updated and they could have converters to MMSE also.

## Instructions to use AWK scripts
- AWK works under Unix, GNU/Linux, BSD. MacOS-X, Haiku. Either on TTY or terminal type `awk -f filename.awk` and the programme will be executed
- `cdr.awk` & `cdr-fltd.awk` have more strict data validation than their MS-PowerShell counterparts `cdr-pwsh.ps1` & `cdr-fltd-pwsh.ps1`
- ECT charge & age-based calculators in AWK work better than BASH shell coutnerpart scripts. ECT Charge uses `IGNORECASE` which is typical of GNU/AWK (gAWK), if used under a different non-GNU platform consider adding `#` and space before it to comment it out. The rest of the script should not be affected.
- `qtc.awk` is more accurate and provide more data than `qtc.bas`

### List AWK scripts
- `avpu2gcs.awk` is an AVPU score calculator and converter to Glasgow Coma Scale (GCS)
- `bmi.awk` refers to body mass index (metric) calculator
- `cardiac-output.awk` refers to cardiac output
- `cdr.awk` refers to Clinical Dementia Rating Scale
- `cdr-ftld.awk` refers to Clinical Dementia Rating Scale + Frontotemporal Lobar Dementia scale
- `ect-age.awk` refers to ECt Age-based dosing and half-age-based dosing
- `ect-charge.awk` refers to ECT charge & titration calculator
- `ect-formulae.awk` refers to ECT Dosing formulae and equations' calculator.
- `hip-waist.awk` refers to hip-waist ratio calculator.
- `kg2lb.awk` refer to Kilograms to pounds converter. 
- `kg2st.awk`: kilogram to stone converter.
- `lb2kg.awk` Pounds to kilograms converter.
- `map.awk` refers to mean arterial blood pressure calculator
- `mhgap-dementia.awk` is Dementia algorithm from the [WHO mhGAP](https://www.who.int/publications/i/item/9789241549790) version 2.0 website
- `mhr.awk`: Maximum Heart Rate Calculator
- `moca-5-min.awk`refers to Montreal Cognitive Assessment 5-minute protocol
- `moca-mis-awk` calculates the Memory Index Score (MIS) of the Montreal Cognitive Examination (MocA) or MoCA-Blind
- `qtc.awk` calculates QTc interval via Bazett, Fridericia, Hodges (different calculations), Framingham, Rautaharju, & Dmitrienko
- `rtms.awk` refers to rTMS dose calculator.
- `st2kg.awk` refers to stone to kilogram converter.

## Instructions for Perl Script
Type `perl` followed by the file name eg `perl bmi.pl`. Perl almost alway comes pre-bundled in GNU/Linux distros & MacOS, to download the latest update it could be done via the distro's update command or else from [Perl website](https://www.perl.org/get.html). For MS-Windows, Perl is freely downloadable from [Strawberry Perl](https://strawberryperl.com/) & [Active Perl](https://www.activestate.com/products/perl/)

### Perl Scripts
- `4AT.pl`: calculates The Assessment Test for Delirium (4AT).
- `amt4.pl`:calculates the Abbreviated Mental Test Score 4-item
- `amts.pl`: calculates the Abbreviated Mental Test Score
- `updrs.pl`: calculates Assessment of Parkinsonism UPDRS 5-item
- `ace.pl`: calculates The Addenbrooke's Cognitive Examination - III (ACE-III) score, with ACE to MMSE converter & offers file save.
- `ace-nosave.pl`: alculates The Addenbrooke's Cognitive Examination - III (ACE-III) score, with ACE to MMSE.
- `acer.pl`: calculates The Addenbrooke's Cognitive Examination - Revised (ACE-R) score, M-ACE & offers file save.
- `ace2mmse.pl`: converts the The Addenbrooke's Cognitive Examination - III (ACE-III) score to MMSE score.
- `audit.pl`: calculates Alcohol Use Disorders Identification Test (AUDIT) score
- `avpu2gcs.pl` converts from AVPU score to GCS score
- `bai.pl`: Beck Anxiety Inventory (BAI) calculator
- `bdi.pl`: is Beck Depression Inventory (BDI) score calculator
- `bmi.pl` calculates the BMI
- `bprs.pl` calculates the Brief Psychiatric Rating Scale
- `cage.pl`: calculates CAGE Questionnaire
- `cardiac-outut.pl` calculates the cardiac output
- `cdr.pl` calculates the clinical dementia rating scale
`cdr-ftld.pl` calculates Clinical Dementia Rating, Clinical Dementia Rating + National Alzheimer's Disease Coordinating Centre (NACC) Frontotemporal Lobar Degeneration (CDR-FTLD)
- `cdss.pl': Calgary Depression Scale for Schizophrenia (CDSS)
- `celsius.pl` Fahrenheit to Celsius: Temperature scale converter
- `ect-age.pl` is an ECT Age-based and Dose calculator
- `ect-charge.pl` is an` ECT charge & titration calculator
- `ect-formulae.pl`: is ECT dosing formulae and equations' calculator
- `fab.pl`: Frontal Assessment Battery (FAB)
- `gad7.pl`: Generalised Anxiety Disroder (GAD-7) Assessment
- `hama.pl`: Hamilton Anxiety Rating Scale (HAM-A)
- `his.pl`: is Hachinski Ischaemic Score (HIS) calculator
- `hip-waist.pl` is a Hip-Waiste Ratio calculator
- `honos.pl`: Health of The Nation Ouctome Scale (HoNOS)
- `iqcode.pl`: Informant Questionnaire on Cognitive Decline in the Elderly (IQCODE).
- `iqcoder.pl`: Retrospective Form of the Informant Questionnaire on Cognitive Decline in the Elderly (Retrospective IQCODE)
- `iqcodes.pl`: Informant Questionnaire on Cognitive Decline in the Elderly (IQCODE-Short)
- `kg2lb.pl` refer to Kilograms to pounds converter.
- `kg2st.pl`: kilogram to stone converter.
- `lb2kg.pl` Pounds to kilograms converter.
- `madrs.pl`: Montgomery-Åsberg Depression Rating Scale (MADRS) Total Score Calculator
- `map.pl` refers to mean arterial blood pressure calculator
- `mace.pl` refers to Mini-Addenbrooke's Cognitive Examination (M-ACE)
- `mhgap-dementia.pl` is Dementia algorithm from the [WHO mhGAP](https://www.who.int/publications/i/item/9789241549790) version 2.0 website
- `mhr.pl` refers to Maximum Heart Rate Calculator
- `minicog.pl`: Mini-Cog Test Calculator
- `mmse.pl`: Mini-Mental State Examination Calculator (MMSE)
- `moca-5-min.pl`refers to Montreal Cognitive Assessment 5-minute protocol
- `moca-mis.pl`: refers to Montreal Cognitive Examination (MocA) Memory Score Index (MIS)
- `neutralise.pl`: is a rough helper to make reports more gender neutral. It is by no means complete. To work this file type `perl -pi -w neutralise.pl filename.txt`
- `phq9.pl`: Patient Health Questionnaire (PHQ-9) Depression
- `qtc.pl` calculates QTc interval via Bazett, Fridericia, Hodges (different calculations), Framingham, Rautaharju, & Dmitrienko with file save option.
- `raid.pl`: Rating Anxiety in Dementia (RAID)
- `rtms.pl` refers to rTMS dose calculator.
- `sadpersons.pl`: SADPERSONS scale calculator
- `st2kg.pl` refers to stone to kilogram converter.
- `thr.pl` refers to Target Heart Rate
- `wsas.pl`:  Work & Social Adjustment Scale

## Instruction for sed Script
This is a stream editor (sed) converter to make letters and reports more gender neutral.  To make this script work please, use the following commands:
- `chmod +x `neutralise.sed`
- `sed -i -f neutralise.sed file.txt`
 The script will go through each of the words that could be changed to convert them to a more neutral alternative or synonym.

- **Limitations**: object pronoun & possessive adjective are the same for singular feminine (her). If the text has her it should be cross revised manually. A bang will appear next to the word to alert the reviewer. For a singular third person male the possessive adjective and the possessive pronoun are the same. A bang will appear to alert the reviewer to check the text. This project is far from complete.
  
## Instructions for MS-PowerShell Script
- Please, select PowerShell ISE
- Please, load the programme or copy ace-pwsh.ps1 and paste it in MS-PowerShell ISE
- Please, press `play` button
- Please, answer the questions based on your assessment results
- Only numbers are entered
- After finishing the programme calculates the total ACE-III, or ACE-R etc. score with its subsets _whenever possible_ and displays them
- If any of the values are out of range, the programme will let you know and will prompt you to enter a value within range.

### List of MS-PowerShell Scripts 
- `ace-pwsh.ps1` refers to Addenbrooke's Cognitive Examination (ACE-III), with Mini-ACE (M-ACE) subset calculation
- `ace-r-pwsh.ps1` refers to Addenbrooke's Cogntive Examination -R (ACE-R) with Mini-ACE (M-ACE) and Mini-Mental State Examination (MMSE) subsets calculation
- `bmi-pwsh.ps1` refers to metric Body Mass Index
- `cbi-r-pwsh.ps1` refers to Cambridge Behavioural Inventory Revised (CBI-R)
- `cdr-ftld-pwsh.ps1` refers to Clinical Dementia Rating + National Alzheimer's Disease Coordinating Centre (NACC) Frontotemporal Lobar Degeneration (CDR-FTLD)
- `cdr-pwsh.ps1` refers to Clinical Dementia Rating
- `ect-pwsh.ps1` refers to an electroconvulsive therapy calculator. It calculates the electroconvulsive therapy (ECT) charge according to Age-Based & Half Age-Based Formulae. Also, if one gives it the Pulse Width (PW) in millisecond (ms), Frequency in Herz (Hz), Duration in seconds (D), and current in Amperes (I). It can calculate the charge in millicoulombs (mC). eg PW: 1 ms, F 20 Hz, Duration 6, and current 0.8 A, Charge would be 192.0 mC.
- On MS-Windows from the start menu down left search for PowerShell
- `m-ace-pwsh.ps1` refers to Mini-Addenbrooke's Cognitive Examination III (M-ACE III)
- `moca-pwsh.ps1` refers to Montreal Cognitive Examination (MoCA)
- `moca-blind-pwsh.ps1` refers to Montreal Cognitive Examination - blind (MoCA - Blind)


## Platform independent
### HTML/JavaScript
- `moca2mmse.html` is an HTML/JavaScript based on the conversion by Lawton et al. Credits to [Hosadeeb Adeeb Nashed](https://github.com/HosAdeeb)

### FreeBASIC
One would either install FreeBasic compiler +/- IDE or else use [online FreeBASIC compiler](https://www.jdoodle.com/execute-freebasic-online/)
- `amt4.bas` refers to Abbreviated Mental Test-4 (AMT4)
- `bmi.bas` is Body Mass Index (BMI) calculator in kilograms and meter, `bmi-lb-inch.bas` calculates BMI in pounds and inches 
- `cage.bas` is CAGE questionnaire calculator written in BASIC (FreeBASIC). 
- `map.bas` is Mean Arterial Blood Pressure Calculator. 
- `mhr.bas` refers to Maximum Heart Rate (MHR) Calculator.
- `mini-cog.bas` refers to Mini-Cog test.
- `ohms-law.bas` refers to ECT Ohm's law
- `qtc.bas` is QTc Interval calculator according to Bazett, Framingham, and, Hodges formulae. Bazett is the most commonly used.

### REXX
These scripts are written in REXX. It could be used for z/OS, Unix, GNU/Linux (via Regina-REXX), Amiga OS (via ARexx) and other AmigaOS related OS (AROS, MorphOS etc.), or OS/2
- `4at.rexx` refers to 4AT test.
- `audit.rexx` refers to Alcohol Use Disorders Identification Test (AUDIT).
- `bmi.rexx` is a BMI calculator.
- `dsrs.rexx` refers to Dementia Severity Rating Scale (DSRS).
- `energy.rexx` refers to ECT energy calculator in joules
- `hip-waiste.rexx` refers to hip-waiste ratio calculator.
- `his.rexx` refers to Hachinski Ischaemic Score (HIS).
- `map.rexx` refers to mean arterial blood pressure calculator
- `mhr.rexx` refers to Maximum Heart Rate (MHR) Calculator.
- `ohms-law.rexx` refers to ECT Ohm's law
- `power.rexx` refers to ECT Power Calculator in watts
- `spmsq.rexx` refers to  The Short Portable Mental Status Questionnaire (SPMSQ)


## FreeDOS
[FreeDOS](https://www.freedos.org/) is licensed under GNU/GPL-3

- `avpu.bat` refers to AVPU score 
- `avpu2gcs.bat` refer to AVPU to GCS converter
- `cage.bat` refers to CAGE Questionnaire for alcohol dependence
- `cardiac.bat` refers to cardiac output calculator.
- `ect-age.bat` refers to ECT dose calculation via Age-Based Method & Half Age-Based Method.
- `gds-15.bat` refers to Geriatric Depression Scale (15-item) (GDS-15)
- `gds-4.bat` refers to Geriatric Depression Scale (4-item) (GDS-4) 
- `mhr.bat` refers to Maximum Heart Rate.

## Twin Project
[Python ACE-III Calculator](https://github.com/moftasa/PythonACEIIICalculator) is a twin project by [Mostafa Hussein Omar](https://github.com/moftasa) that has both a LibreOffice spreadsheet (\*.ods) that could be filled with an automatic calculator and a Python script that works as a calculator. Type `Python` and the path of the script and it will start.

## HOWTO
- To clone (copy the assessments) if you have git. You can type `git clone https://github.com/E-Sid/scripts/`
- To Download hover of the icon `code <>` and download zip file (compressed file). Then unzip it either via GUI or `unzip` command on the CLI
- You can also copy a single code and paste it as a text file then rename it with the appropriate extension, and make it executable.

## Disclaimer
- For cardiovascular calculators: Mean arterial blood pressure, QTc interval calculator, Cardiac output offer only one way of calculation and should be used for general guidance **ONLY**. Please note that this codes here are just examples, calculations should **ONLY** be performed by trained healthcare professionals. The formulae used here is just an estimate and the actual cardiovascular calculations can vary based on individual factors such as fitness level and health conditions. 
- For psychiatric calculators, the interpretations of severity is not added as the score **SHOULD NOT** be interpreted as a marker of severity of illness in isolation from a clinical context. These are **NOT** substitutes to assessment by a health care professional.
- All these scripts are **ONLY** calculators not the tests themselves. Usage of these score calculators is both free (libre) & free (gratis) under GNU/GPL 3.0 however, the usage of any of the test material is subject to the authors copyright status.
- For diagnostic algorithms the source of information eg [mhGAP](https://www.who.int/publications/i/item/9789241549790) should **ALWAYS** be checked. This is aimed at healthcare professionals, and should be used **ONLY** to facilitate the algorithmic part of the diagnostic procedure, but **NOT** as a substitute for clinical assessment, or the WHO mhGAP guidance.
- Some shorter Perl codes were translated from AWK code via `a2p` command eg `mhgap-dementia.pl`. The code is the result of this conversion approach, but it is functional, more recent codes eg `ace.pl`, `acer.pl`, `mace.pl`, `mhr.pl` were written directly in Perl. Currently, the ability to save the results is being added gradually to `Perl` codes. The first one to utilise this is `celsius.pl`.
- `ace.pl` & `acer.pl` use the deprecated goto for saving results. In case, the a new version appears, one can use `ace-nosave.pl` instead.

## Declaration of Interest
- None
- These scripts are intended as aides to help with calculation of psychometric and cardiovascular assessments. 
- These scripts are licensed under GNU/GPL-3 license and are free to use.
- These are not the tests, they only are calculators to score the tests, examinations and assessments.

## License
- This product is licensed under GNU/GPL-3. Clinical Use is allowed by trained clinicians but it is not for commercial use. This applies only to calculators not the tests. If anyone wants to use the tests, one should check their license as well.

