@echo off
:begin
color a
echo Access Code : 
set /p ac=
if %ac%==12345 (
echo Access Granted
) else (
echo Access Denied
goto begin
)
Pause