@echo off
CHCP 65001>NUL

set "PROGRAM=C:\Program Files\7-Zip\7zFM.exe"
set "LOGIN=domain\login"
set "PASS=pass"

if exist %temp%\runas.vbs del /f /q %temp%\runas.vbs
>%temp%\runas.vbs echo set WshShell = WScript.CreateObject("Wscript.Shell")
>>%temp%\runas.vbs echo WshShell.run "runas /user:%LOGIN% /savecred " + Chr(34) + "%PROGRAM% /args" + Chr(34)
>>%temp%\runas.vbs echo WScript.Sleep 500
>>%temp%\runas.vbs echo WshShell.SendKeys "%PASS%"
>>%temp%\runas.vbs echo WshShell.SendKeys "{ENTER}"
>>%temp%\runas.vbs echo set WshShell = nothing

cscript //nologo %temp%\runas.vbs
if exist %temp%\runas.vbs del /f /q %temp%\runas.vbs