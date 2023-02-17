@echo off

REM AVPU to GCS Converter

echo "The is AVPU to Glagsow Coma Scale (GCS) converter"
echo  Please, enter AVPU score. If you do not enter any of these letters, the batch file will not calculate GCS, you can restart it to calculate
set /p avpu="Please, Enter AVPU score (A/V/P/U): "
set gcs=

if "%avpu%"=="A" set gcs=15
if "%avpu%"=="A" set gcs=15
if "%avpu%"=="V" set gcs=13
if "%avpu%"=="v" set gcs=13
if "%avpu%"=="P" set gcs=8
if "%avpu%"=="p" set gcs=8
if "%avpu%"=="U" set gcs=3
if "%avpu%"=="u" set gcs=3

echo GCS: %gcs%
