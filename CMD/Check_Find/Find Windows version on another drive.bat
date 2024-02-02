@ECHO OFF
CHCP 65001>NUL
net sess>NUL 2>&1||(powershell try{saps '%0'-Verb RunAs}catch{}&exit)

ECHO.
set /p "disk=Enter disk:"
cls
if "%disk%" == "c" goto CDrive

ECHO.&ECHO REG LOAD..&ECHO.
REG UNLOAD HKLM\%disk%                                        2>nul >nul
REG LOAD HKLM\%disk% %disk%:\Windows\System32\config\SOFTWARE 2>nul >nul
cls
FOR /F "tokens=3,4" %%I in ('reg query "HKLM\%disk%\Microsoft\Windows NT\CurrentVersion" /v ProductName')  Do set "ProductName=%%I %%J"
FOR /F "tokens=3,4" %%I in ('reg query "HKLM\%disk%\Microsoft\Windows NT\CurrentVersion" /v EditionID')    Do set "EditionID=%%I %%J"
FOR /F "tokens=3,4" %%I in ('reg query "HKLM\%disk%\Microsoft\Windows NT\CurrentVersion" /v CurrentBuild') Do set "CurrentBuild=%%I %%J"
ECHO.&ECHO REG UNLOAD..&ECHO.
REG UNLOAD HKLM\%disk%                                        2>nul >nul
cls
ECHO.&ECHO %ProductName% %EditionID%%CurrentBuild%&ECHO.
PAUSE&EXIT

:CDrive
FOR /F "tokens=3,4" %%I in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName')  Do set "ProductName=%%I %%J"
FOR /F "tokens=3,4" %%I in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v EditionID')    Do set "EditionID=%%I %%J"
FOR /F "tokens=3,4" %%I in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v CurrentBuild') Do set "CurrentBuild=%%I %%J"
ECHO.&ECHO %ProductName% %EditionID%%CurrentBuild%&ECHO.
PAUSE&EXIT