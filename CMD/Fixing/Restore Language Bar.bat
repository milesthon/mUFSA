@echo off

REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\CTF\LangBar" /v ExtraIconsOnMinimized /d 0 /t REG_DWORD /f 
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\CTF\LangBar" /v Label /d 1 /t REG_DWORD /f 
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\CTF\LangBar" /v ShowStatus /d 4 /t REG_DWORD /f 
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\CTF\LangBar" /v Transparency /d 255 /t REG_DWORD /f 

pause
