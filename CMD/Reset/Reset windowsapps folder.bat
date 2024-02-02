@echo off
CHCP 65001>NUL
net sess>NUL 2>&1||(powershell try{saps '%0'-Verb RunAs}catch{}&exit)
curl -# -L https://download.sysinternals.com/files/PSTools.zip -o "C:\Users\%username%\AppData\Local\Temp\PSTools.zip"
powershell -command "Expand-Archive -Path "C:\Users\%username%\AppData\Local\Temp\PSTools.zip" -DestinationPath "C:\Users\%username%\AppData\Local\Temp\PSTools" -Force"

cls

echo.&echo Wait.. Black window is normal.. Wait..
echo.&echo Подождите.. Черное окно это нормально.. Подождите..
"C:\Users\%username%\AppData\Local\Temp\PSTools\psexec.exe" -s -i cmd /k icacls "C:\Program Files\WindowsApps" /reset /t /c /q
if errorlever 0 (echo DONE!&pause&exit) else (echo Error!&pause&exit)
pause