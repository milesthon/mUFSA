@echo off
set /p User=UserName: 

for /F "tokens=*" %%a in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList" /f "C:\users\%User%" /d /s /e ^| FIND /I "HKEY" ') do set "RegKey=%%a"

REG delete "%RegKey%" /va /f

pause