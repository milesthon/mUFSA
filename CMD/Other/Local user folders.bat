@echo off
For /F "Delims=" %%I In ('Dir /B /AD-S-H "c:\users" ') Do (
echo %%I
)
pause