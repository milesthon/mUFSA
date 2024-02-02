set "key=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree"
for /f "tokens=*" %%i in ('reg.exe query "%Key%" ^| find /i "onedrive"') do reg delete "%%i" /f
pause