@echo off

CHCP 65001>NUL
net session >nNUL 2>&1
if %errorLevel% == 0 (
ECHO Права Администратора есть..
ping localhost -n 2 >NUL
goto start
) else (
cls
ECHO Прав Администратора нет..!
pause>NUL
exit
)

:start