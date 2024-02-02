@echo off
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Wallpapers" /v BackgroundType /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\control panel\desktop" /v wallpaper /t REG_SZ /d "" /f
reg add "HKEY_CURRENT_USER\Control Panel\Colors" /v Background /t REG_SZ /d "0 0 0" /f
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters 1, True
pause