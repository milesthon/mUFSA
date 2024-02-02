:: @echo off
CHCP 65001>NUL

if not exist "C:\Users\%username%\AppData\Local\Temp\file.txt" echo "%~1" > "%Temp%\file.txt"
set /p FILE=< "%Temp%\file.txt"
net sess>NUL 2>&1||(powershell try{saps '%0'-Verb RunAs}catch{}&exit)

takeown /f %FILE%
icacls %FILE% /grant %UserName%:F /t /q
DEL /F /A /Q %FILE%
RD /S /Q %FILE%

del "%Temp%\file.txt" /F
pause