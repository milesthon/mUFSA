::@echo off

net stop bits /yes
net stop wuauserv /yes
net stop msiserver /yes
net stop cryptsvc /yes
net stop appidsvc /yes
net stop dosvc /yes
taskkill /im wuauclt.exe /f

RENAME "C:\Windows\SoftwareDistribution\Download" "Download_old"
echo. > "C:\Windows\SoftwareDistribution\Download"
pause