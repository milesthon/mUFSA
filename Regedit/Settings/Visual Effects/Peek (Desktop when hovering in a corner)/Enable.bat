@echo off

REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V DisablePreviewDesktop /T REG_DWORD /D 0 /F

REG ADD "HKCU\SOFTWARE\Microsoft\Windows\DWM" /V EnableAeroPeek /T REG_DWORD /D 1 /F

taskkill /f /im explorer.exe
start explorer.exe