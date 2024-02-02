set "key=HKEY_LOCAL_MACHINE\SOFTWARE\7-Zip"
for /f "tokens=1-5" %%i in ('reg.exe query "%Key%" ^| find /i "sssss"') do reg.exe delete "%Key%" /v "%%i" /f
pause