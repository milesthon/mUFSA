@echo off
CHCP 65001>NUL
setlocal enabledelayedexpansion

set "chosenDrive=Z"
set "networkPath=\\server\Fileshare"
set "username=server\user"
set "password=password"

net use /delete %networkPath% 2>nul >nul
net stop workstation /y 2>nul >nul&& net start workstation 2>nul >nul&& net start netlogon 2>nul >nul

net use %chosenDrive%: %networkPath% /user:%username% %password%
if errorlevel 1 (
    for %%i in (Z Y X W V U T S R Q P O N M L K J I H G) do (
        net use %%i: %networkPath% /user:%username% %password%
        if not errorlevel 1 goto :end
    )
)

:end
pause
exit

:error
echo Запустите от имени администратора, после снова от пользователя
pause
endlocal