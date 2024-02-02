@echo off
CHCP 65001>NUL
for /f "tokens=2*" %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList" /s /v "ProfileImagePath"^|findstr /rc:"^[ ][ ]*"^|findstr /v /c:"systemprofile" /c:"LocalService" /c:"NetworkService"') do call :spath "%%b"
pause& exit
:spath
echo Путь: %~1, имя: %~n1
)
exit /b