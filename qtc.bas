DIM x as double
DIM y as double
Print "This is QTc Interval Calculator"
Print "==============================="
Print "Please, enter QT interval"
Input x
Print "Please, enter the heart rate in beats per minute (bpm)"
Input y
REM Bazett formula: QTC = QT / √ RR
Print "QTc Interval according to Bazett formula (most commonly used) is" ; x/(SQR(60/y))
REM Framingham formula:  QTC = QT + 0.154 (1 – RR)
Print "QTc Interval according to Framingham formula is" ; x + (0.154 * (1 - (60/y)))
REM Hodges formula: QTC = QT + 1.75 (heart rate – 60)
Print "QTc Interval according to Hodges formula is" ; x + (1.75 * (y - 60))
