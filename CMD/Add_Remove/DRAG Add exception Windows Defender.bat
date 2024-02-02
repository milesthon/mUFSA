@echo off
CHCP 65001>NUL
mode 80,5

if not exist "%Temp%\path.txt" echo %~1 > "%temp%\path.txt"
net sess>NUL 2>&1||(powershell try{saps '%0'-Verb RunAs}catch{}&exit)
set /p PATH=< "%temp%\path.txt"
%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe -command Add-MpPreference -ExclusionPath '%PATH%'
del "%Temp%\path.txt"
echo.&echo %PATH% added to exception!
pause