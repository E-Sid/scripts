@echo off
setlocal enabledelayedexpansion

:input
set /p "birth_year=Enter your birth year: "

rem Check if the input is a number
set "is_number=true"
for /f "delims=0123456789" %%i in ("!birth_year!") do set "is_number=false"

if not !is_number! == true (
    echo Invalid input. Please enter a valid number.
    goto input
)

rem Get the current year
for /f "tokens=1 delims=" %%a in ('wmic os get localdatetime ^| find "."') do set "datetime=%%a"
set "current_year=!datetime:~0,4!"

rem Calculate the age
set /a age=current_year - birth_year

rem Validate that the age is not zero or less
if !age! leq 0 (
    echo Invalid result. Age cannot be zero or less.
    goto input
)

echo Your age is: %age% years
endlocal
