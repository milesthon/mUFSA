@echo off
reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Applets\Regedit /v LastKey /t REG_SZ /d "HKEY_CLASSES_ROOT\local settings\software\microsoft\windows\shell\muicache" /f

start /wait "title" /b regedit.exe

reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Applets\Regedit /v LastKey /f