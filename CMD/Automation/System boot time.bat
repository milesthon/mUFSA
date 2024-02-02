@echo off
chcp 65001>NUL
systeminfo | find "System Boot Time"
systeminfo | find "Время загрузки системы"

pause