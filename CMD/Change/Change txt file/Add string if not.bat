@ECHO OFF

FIND /C /I "TEST" "C:\Users\%UserName%\Desktop\test.txt"
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^ TEST>> "C:\Users\%UserName%\Desktop\test.txt"