@echo off
CHCP 65001>NUL

cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
mode 122,41

for /f "skip=1 tokens=2 delims==" %%a in ('wmic logicaldisk where "DriveType=3 and MediaType=12" get Name /value^|find "="') do (
set "DISK=%%a")
chkdsk %DISK% /f /r /x

cls

set /p input= "Проверить диск C: на ошибки с перезагрузкой? (y/n)"

cls

if %input%==y (fsutil dirty set C: && timeout /t 5 /nobreak && shutdown /r /t 0) else (exit /b)

pause