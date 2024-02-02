
for /f "tokens=1,2 delims=;" %%k in ('type "1.txt"') do (
    set "login=%%~l"
    for /f %%J in ('reg query HKU^|findstr /i /r /c:"^HKEY_USERS\\S-1-5-21-.*[0-9]$"') 
do (set "login=%%~l")
)
"HKU\%%~nxJ" C:\Users\%UA%\NTUSER.DAT
pause