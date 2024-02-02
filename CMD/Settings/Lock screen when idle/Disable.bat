@echo off
CHCP 65001>NUL
REG DELETE "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /F
pause