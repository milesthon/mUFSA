@echo off
CHCP 65001>NUL

set /p "i=Имя: "

REG EXPORT "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Accent" "C:\Users\%username%\Desktop\Цвета\%i%.reg"

CHCP 866>NUL
pause