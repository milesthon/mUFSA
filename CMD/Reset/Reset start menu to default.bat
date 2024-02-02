REG DELETE HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount /F 2>nul >nul
PowerShell -Command "Get-Process explorer | Stop-Process" 2>nul >nul