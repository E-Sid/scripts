@echo off
echo This is AVPU score
set /p response="Enter the patient's response (A, V, P, U): "

if /i "%response%"=="A" (
  echo "The AVPU score is Alert"
)  else if /i "%response%"=="a" (
  echo "The AVPU score is Alert"
) else if /i "%response%"=="V" (
  echo "The AVPU score is Verbal"
  ) else if /i "%response%"=="v" (
    echo "The AVPU score is Verbal"
) else if /i "%response%"=="P" (
  echo "The AVPU score is Pain"
  ) else if /i "%response%"=="p" (
    echo "The AVPU score is Pain"
) else if /i "%response%"=="U" (
  echo "The AVPU score is Unresponsive"
  ) else if /i "%response%"=="u" (
    echo "The AVPU score is Unresponsive"
) else (
  echo "Invalid input for AVPU response"
)
