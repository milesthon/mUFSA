@echo off
CHCP 65001>NUL
set /p "PC=hostname: "
echo Для выполнение комманды в новой сессии cmd прописать - "cmd /k "%command%"
set /p "CMD=command: "

For /F "tokens=1" %%I In ('winrs -r:%PC% query user') do set "USER=%%I"
winrs /nologo -r:%PC% Schtasks /delete /TN TEMP /f
winrs /nologo -r:%PC% Schtasks /create /RU biksfu0\%USER% /SC ONCE /TN TEMP /TR "%CMD%" /ST 10:00 /f 
winrs /nologo -r:%PC% Schtasks /run /TN TEMP
winrs /nologo -r:%PC% Schtasks /delete /TN TEMP /f
pause