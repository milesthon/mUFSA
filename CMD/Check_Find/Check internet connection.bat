@Echo Off
chcp 65001>NUL

ping -n 2 8.8.8.8    | find "TTL=" > nul&if errorlevel 1 (echo DNS FAIL) else (echo DNS OK)
ping -n 2 google.com | find "TTL=" > nul&if errorlevel 1 (echo IP FAIL)  else (echo IP OK)
echo.
ping -n 2 google.com | find "TTL=" > nul&if errorlevel 1 (echo Интернет: Нету.)  else (echo Интернет: Есть.)

chcp 866>NUL
pause
Exit 
