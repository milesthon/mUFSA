@echo off
chcp 65001>NUL

echo.
echo  wait..
setlocal ENABLEDELAYEDEXPANSION
for /f "tokens=2*" %%A in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall" /V /F DisplayName /S /E 2^>nul ^| findstr "DisplayName"'
) do (
for /f "delims=" %%P in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall" /s /f "%%B" 2^>nul ^| findstr "HKEY_LOCAL_MACHINE"') do (
for /f "tokens=2*" %%X in (
'reg query "%%P" /v "UninstallString" 2^>nul ^|findstr "UninstallString"'
) do (
set MsiStr=%%Y
set MsiStr=!MsiStr:/I=/X!
echo %%B >> "C:\Users\%UserName%\AppData\Local\Temp\Programms.txt"
echo !MsiStr! >> "C:\Users\%UserName%\AppData\Local\Temp\Programms.txt"
echo. >> "C:\Users\%UserName%\AppData\Local\Temp\Programms.txt"
)
)
)
for /f "tokens=2*" %%A in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall" /V /F DisplayName /S /E 2^>nul ^| findstr "DisplayName"'
) do (
for /f "delims=" %%P in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall" /s /f "%%B" 2^>nul ^| findstr "HKEY_LOCAL_MACHINE"') do (
for /f "tokens=2*" %%X in (
'reg query "%%P" /v "UninstallString" 2^>nul ^|findstr "UninstallString"'
) do (
set MsiStr=%%Y
set MsiStr=!MsiStr:/I=/X!
echo %%B >> "C:\Users\%UserName%\AppData\Local\Temp\Programms.txt"
echo !MsiStr! >> "C:\Users\%UserName%\AppData\Local\Temp\Programms.txt"
echo. >> "C:\Users\%UserName%\AppData\Local\Temp\Programms.txt"
)
)
)
"C:\Users\%UserName%\AppData\Local\Temp\Programms.txt"
del /q "C:\Users\%UserName%\AppData\Local\Temp\Programms.txt"
setlocal DISABLEDELAYEDEXPANSION

HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall