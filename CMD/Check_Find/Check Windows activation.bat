@echo off
CHCP 65001>NUL

cscript.exe c:\windows\system32\slmgr.vbs -ato  > %temp%\act.txt
cscript.exe c:\windows\system32\slmgr.vbs -dli >> %temp%\act.txt
cscript.exe c:\windows\system32\slmgr.vbs -dlv >> %temp%\act.txt
cscript.exe c:\windows\system32\slmgr.vbs -xpr >> %temp%\act.txt
%temp%\act.txt