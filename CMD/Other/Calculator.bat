@echo off
chcp 65001>NUL
title Калькулятор
mode 45,15
color 1f
:top
chcp 65001>NUL
echo --------------------------------------------
echo               Введите значение:           
echo --------------------------------------------
echo.
chcp 866>NUL
set /p sum=
set /a ans=%sum%
echo.
echo = %ans%
echo --------------------------------------------
pause
cls
chcp 65001>NUL
echo Предыдущее значение: %ans%
chcp 866>NUL
goto top
pause
exit