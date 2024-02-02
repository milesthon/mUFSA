@echo off
CHCP 65001>NUL

PowerShell @^(^(New-Object -com shell.application^).Windows^(^)^).Document.Folder.Self.Path >> "%temp%\paths.txt"
TaskKill /F /IM Explorer.exe
Start Explorer.exe                                                                                                                                     2>nul >nul
FOR /F "tokens=*" %%f IN (%temp%\paths.txt) DO (
set "var=%%f"
set "firstletters=!var:~0,2!"
IF "!firstletters!" == "::" ( start /min shell:%%~f ) ELSE ( start /min "" "%%~f" )
)                                                                                                                                                      2>nul >nul
DEL "%temp%\paths.txt"                                                                                                                               2>nul >nul
pause