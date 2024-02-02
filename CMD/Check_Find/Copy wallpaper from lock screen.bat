@echo off
chcp 65001>NUL
mkdir "%~dp0\MSWallpapers" >NUL 2>&1
copy "%userprofile%\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets" "%~dp0\MSWallpapers" >> C:\Windows\Temp\logz.txt >NUL 2>&1
ren "%~dp0\MSWallpapers\*.*" "*.jpg" >NUL 2>&1
echo Создана папка MSWallpapers. Обои находятся там.
explorer "%~dp0MSWallpapers"
chcp 866>NUL
pause
exit
