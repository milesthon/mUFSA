@echo off
CHCP 65001>NUL

winrs -r:server powershell -Command "Get-ADComputer -Filter * -SearchBase 'OU=folder,DC=domain,DC=local' | Select-Object Name" > "%Temp%\usersPC.txt"
set "CMD=cmd.exe /c \"start \"\"/MIN \\server\netlogon\bginfop\a.bat\"\""

for /f %%a in (%Temp%\StudentPC.txt) do (
  ping -n 1 %%a | find "TTL=" > nul
  if not errorlevel 1 (
    echo Установка обоев на ПК: %%a
    for /f "tokens=1" %%b In ('winrs -r:%%a query user') do (
      winrs /nologo -r:%%a Schtasks /delete /TN TEMP /f
      winrs /nologo -r:%%a Schtasks /create /RU biksfu0\%%b /SC ONCE /TN TEMP /TR "%CMD%" /ST 10:00 /f
      winrs /nologo -r:%%a Schtasks /run /TN TEMP
      winrs /nologo -r:%%a Schtasks /delete /TN TEMP /f
    ) 2>nul >nul
  )
)

echo Обои успешно установлены на включенные компьютеры!
chcp 866>NUL
pause
