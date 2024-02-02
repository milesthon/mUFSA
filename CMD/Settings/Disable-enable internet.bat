@echo off
CHCP 65001>NUL

:choice
echo 1 Выключить интернет (proxy)
echo 2 Включить интернет (proxy) 
echo 3 Выключить весь интернет
echo 4 Включить весь интернет
set /p "Num=Выбрать: "
if %Num%== 1 goto IOFF
if %Num%== 2 goto ION
if %Num%== 3 goto allIOFF
if %Num%== 4 goto allION
:IOFF 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d 0.0.0.0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyOverride /t REG_SZ /d <local> /f
goto choice
:ION
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f
goto choice
:allIOFF
for /F "skip=3 tokens=3*" %%G in ('netsh interface show interface') do netsh interface set interface "%%H" DISABLED
goto choice
:allION
for /F "skip=3 tokens=3*" %%G in ('netsh interface show interface') do netsh interface set interface "%%H" ENABLED
goto choice