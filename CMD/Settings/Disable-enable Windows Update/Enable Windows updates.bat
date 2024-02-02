@echo off
CHCP 65001>NUL

DEL /Q /F "C:\Windows\SoftwareDistribution\Download"
RENAME "C:\Windows\SoftwareDistribution\Download_old" "Download"

NET start bits
NET start wuauserv
NET start msiserver
NET start cryptsvc
NET start appidsvc
net start dosvc

pause
