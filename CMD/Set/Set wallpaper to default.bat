@echo off
reg add "HKEY_CURRENT_USER\control panel\desktop" /v wallpaper /t REG_SZ /d ""C:\Windows\Web\Wallpaper\Windows\img0.jpg"" /f
reg add "HKEY_CURRENT_USER\control panel\desktop" /v WallpaperStyle /t REG_SZ /d 10 /f
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters 1, True
@exit