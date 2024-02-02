For /F "tokens=2" %%I in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList" /v "ProfileImagePath"|findstr /iec:"%UserProfile%"') Do set %%e=%%r

for /f "tokens=%x%" %%J in ('reg query HKU^|findstr /i /r /c:"^HKEY_USERS\\S-1-5-21-.*[0-9]$"') do REG LOAD "HKU\%%~nxJ" C:\Users\%%I\NTUSER.DAT
pause