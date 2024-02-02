@ECHO OFF

FIND /C /I "google.com" C:\Windows\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^ google.com>> C:\Windows\system32\drivers\etc\hosts