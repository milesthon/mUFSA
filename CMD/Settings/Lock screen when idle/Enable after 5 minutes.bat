@echo off
CHCP 65001>NUL
REG ADD "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /V ScreenSaverIsSecure /D 1 /T REG_SZ /F
REG ADD "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /V ScreenSaveTimeout /D 300 /T REG_SZ /F
REG ADD "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /V ScreenSaveActive /D 1 /T REG_SZ /F
pause