for /f %%i in ('reg query HKU^|findstr /i /r /c:"^HKEY_USERS\\S-1-5-21-.*[0-9]$"') do reg add "%%i\SOFTWARE\Policies\Microsoft\Windows\System" /v DisableCMD /d 0 /t REG_DWORD /f
pause