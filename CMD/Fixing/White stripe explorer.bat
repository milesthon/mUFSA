@echo off
CHCP 65001>NUL

REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Internet Explorer\Toolbar" /v Locked /d 1 /t REG_DWORD /f