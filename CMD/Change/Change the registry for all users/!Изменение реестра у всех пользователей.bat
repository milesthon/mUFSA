@echo off
CHCP 65001>NUL

For /F "Delims=" %%I In ('Dir /B /AD-S-H "C:\Users" ') Do REG LOAD HKU\%%I C:\Users\%%I\NTUSER.DAT)
pause