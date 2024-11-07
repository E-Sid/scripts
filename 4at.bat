@echo off
setlocal enabledelayedexpansion

REM Initialize variables
set /a total_score=0

REM Prompt for each item with validation

REM Alertness
:alertness
set /p alertness="Enter score for Alertness (0 for Normal, 4 for Mild sleepiness/abnormal): "
if "%alertness%"=="0" set /a total_score+=0 && goto amt4
if "%alertness%"=="4" set /a total_score+=4 && goto amt4
echo Invalid input. Please enter 0 or 4.
goto alertness

REM AMT4 (Abbreviated Mental Test – 4)
:amt4
set /p amt4="Enter score for AMT4 (0 for No mistakes, 1 for One or more mistakes): "
if "%amt4%"=="0" set /a total_score+=0 && goto attention
if "%amt4%"=="1" set /a total_score+=1 && goto attention
echo Invalid input. Please enter 0 or 1.
goto amt4

REM Attention
:attention
set /p attention="Enter score for Attention (0 for 7 months backward correctly, 1 for Unsuccessful): "
if "%attention%"=="0" set /a total_score+=0 && goto acute_change
if "%attention%"=="1" set /a total_score+=1 && goto acute_change
echo Invalid input. Please enter 0 or 1.
goto attention

REM Acute Change or Fluctuating Course
:acute_change
set /p acute_change="Enter score for Acute Change (0 for No, 4 for Yes): "
if "%acute_change%"=="0" set /a total_score+=0 && goto display_score
if "%acute_change%"=="4" set /a total_score+=4 && goto display_score
echo Invalid input. Please enter 0 or 4.
goto acute_change

:display_score
echo.
echo Total 4AT score: %total_score%
echo.

REM Interpretation (optional)
if %total_score% geq 4 (
    echo High likelihood of delirium; further assessment recommended.
) else (
    echo Low likelihood of delirium.
)

endlocal
