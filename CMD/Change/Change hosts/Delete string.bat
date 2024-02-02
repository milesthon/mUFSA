@ECHO OFF

TYPE C:\Windows\system32\drivers\etc\hosts | FIND /V /I "google.com" > C:\Windows\system32\drivers\etc\hostss

MOVE C:\Windows\system32\drivers\etc\hostss C:\Windows\system32\drivers\etc\hosts /Y