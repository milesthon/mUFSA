C:\WINDOWS\system32\rundll32.exe C:\WINDOWS\system32\themecpl.dll,OpenThemeAction C:\U.theme

TIMEOUT 1 & REM Waits 1 seconds before executing the next command

TASKKILL /F /IM systemsettings.exe & close window

exit