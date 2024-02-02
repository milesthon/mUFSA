@echo off
chcp 65001>NUL

for /f "tokens=3*" %%I in ('reg query "HKLM\SYSTEM\Setup\Pid" /V Pid') do set "VER=%%I"

if %VER%==OEM goto OEM
if %VER%==00000270 goto VL

:Retail
echo.&echo  Retail&pause>nul&exit

:OEM
echo.&echo  OEM&pause>nul&exit

:VL
echo.&echo  VL&pause>nul&exit