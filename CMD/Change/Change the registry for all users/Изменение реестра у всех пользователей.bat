set "RegPath=HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\ProfileList"
for /f "delims=" %%i in ('reg query "%RegPath%"^|findstr /ibc:"%RegPath%\S-1-5-21"' ) do (
::REG delete "HKEY_USERS\%%~nxi\SOFTWARE\Policies\Microsoft\Windows\System" /v DisableCMD /f
::REG ADD "HKEY_USERS\%%~nxi\SOFTWARE\Policies\Microsoft\Windows\System" /v DisableCMD /d 1 /t REG_DWORD /f
)
pause