SETLOCAL
set "RegPath=HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\ProfileList"
for /f "delims=" %%i in ('reg query "%RegPath%"^|findstr /ibc:"%RegPath%\S-"') do (
  reg query "%%i" /v "ProfileImagePath"|findstr /iec:"%UserProfile%" >nul &&set "SID=%%~nxi"
)

"HKEY_USERS\%SID%\SOFTWARE\Policies\Microsoft\Windows\System"
pause