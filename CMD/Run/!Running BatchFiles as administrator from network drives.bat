@echo off
CHCP 65001>NUL
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLinkedConnections /t REG_DWORD /d 00000001 /f
pause