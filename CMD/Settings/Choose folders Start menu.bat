@echo off
for /f "tokens=* delims= " %%I in ('REG QUERY HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount ^|findstr /I /C:"unifiedtile.startglobalproperties"') do set "id=%%I"
REG ADD "%id%\Current" /V Data /D 0200000048befb2c0106d9010000000043420100c21401c5288603cb320a01058691cc930524aaa30144c38401669ff79db187cbd1acd40100c23c01c24601c55a0100 /T REG_BINARY /F 2>nul >nul
taskkill /f /im explorer.exe
start explorer.exe
pause
