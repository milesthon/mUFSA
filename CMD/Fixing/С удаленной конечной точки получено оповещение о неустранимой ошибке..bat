@echo off

REG ADD "HKLM\System\CurrentControlSet\Control\SecurityProviders\SCHANNEL" /v EventLogging /d 0 /t REG_DWORD /f 2>nul >nul
pause