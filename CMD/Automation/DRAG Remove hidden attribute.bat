@echo off
chcp 65001>NUL

if not exist "%Temp%\file.txt" echo %~1 > "%Temp%\file.txt"
net sess>NUL 2>&1||(powershell try{saps '%0'-Verb RunAs}catch{}&exit)
set /p file=< "%Temp%\file.txt"

attrib -h -s /d /s %file%
IF ERRORLEVEL 0 goto Done

del "%Temp%\file.txt"
cls&echo Fail!&pause

:done
del "%Temp%\file.txt"
cls&echo Done!&pause

