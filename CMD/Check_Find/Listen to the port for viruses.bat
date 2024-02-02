@echo off
CHCP 65001>NUL

set /p "port=Порт (Обычно - 445): "
netstat -abn | findstr "%port%"
pause