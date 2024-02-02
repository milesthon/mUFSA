@echo off
CHCP 65001>NUL

:menu
cls
echo 1. UserName
echo 2. Path
echo 3. 2.xlsx :)
set /p var= Choise: 
if "%var%"=="1" goto op1
if "%var%"=="2" goto op2
if "%var%"=="3" goto op3
goto menu

:op1
cls
set /p user="Username: "
openfiles /disconnect /s server /a "%user%"
pause
goto menu

:op2
cls
set /p path="Path: "
openfiles /disconnect /s server /ID * /OP "%path%"
pause
goto menu

:op3
cls
openfiles /disconnect /s server /ID * /OP "F:\2.xlsx"
openfiles /disconnect /s server /ID * /OP "~$F:\2.xlsx"
pause
goto menu
