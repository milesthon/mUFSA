@ECHO OFF
FOR /F "tokens=3,4" %%I in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName') Do set "version=%%I %%J"
if "%version%" == "Windows XP" goto WinXP
if "%version%" == "Windows Vista" goto WinVista
if "%version%" == "Windows 7" goto goto Win7
if "%version%" == "Windows 8" goto goto Win8
if "%version%" == "Windows 8.1" goto Win8_1
if "%version%" == "Windows 10" goto Win10
if "%version%" == "Windows 11" goto Win11

:WinXP
ECHO Windows XP
goto end

:WinVista
ECHO Windows Vista
goto end

:Win7
ECHO Windows 7
goto end

:Win8
ECHO Windows 8
goto end

:Win8_1
ECHO Windows 8.1
goto end

:Win10
ECHO Windows 10
goto end

:Win11
ECHO Windows 11
goto end

:END
PAUSE

::Reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows XP" >Nul
::If Not Errorlevel 1 ( 
::Goto Win_XP
::) Else (
::Reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Vista" >Nul
::If Not Errorlevel 1 ( 
::Goto Win_Vista
::) Else (
::Reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows 7" >Nul
::If Not Errorlevel 1 (
::Goto Win_7
::) Else (
::Reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows 8" >Nul
::If Not Errorlevel 1 (
::Goto Win_8
::) Else (
::Reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows 8.1" >Nul
::If Not Errorlevel 1 (
::Goto Win_8_1
::) Else (
::Reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows 10" >Nul
::If Not Errorlevel 1 (
::Goto Win_10
::) Else (    
::Goto NotSupported    
::) ) ) ) ) )