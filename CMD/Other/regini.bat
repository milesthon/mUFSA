@echo off
CHCP 65001>NUL

:: HKEY_CLASSES_ROOT
echo \registry\machine\software\classes\ [  ] > "%temp%\RegIni.txt"
:: HKEY_CURRENT_USER
echo \Registry\User\User_SID\ [  ] > "%temp%\RegIni.txt"
:: HKEY_LOCAL_MACHINE
echo \Registry\Machine\ [  ] > "%temp%\RegIni.txt"
:: HKEY_USERS
echo \Registry\Users\ [  ] > "%temp%\RegIni.txt"

RegIni.exe "%temp%\RegIni.txt"

del "%temp%\RegIni.txt"

pause

:: 1  - Administrators Full Access
:: 2  - Administrators Read Access
:: 3  - Administrators Read and Write Access
:: 4  - Administrators Read, Write and Delete Access
:: 5  - Creator Full Access
:: 6  - Creator Read and Write Access
:: 7  - World Full Access
:: 8  - World Read Access
:: 9  - World Read and Write Access
:: 10 - World Read, Write and Delete Access
:: 11 - Power Users Full Access
:: 12 - Power Users Read and Write Access
:: 13 - Power Users Read, Write and Delete Access
:: 14 - System Operators Full Access
:: 15 - System Operators Read and Write Access
:: 16 - System Operators Read, Write and Delete Access
:: 17 - System Full Access
:: 18 - System Read and Write Access
:: 19 - System Read Access
:: 20 - Administrators Read, Write and Execute Access
:: 21 - Interactive User Full Access
:: 22 - Interactive User Read and Write Access
:: 23 - Interactive User Read, Write and Delete Access

:: https://learn.microsoft.com/ru-ru/troubleshoot/windows-client/application-management/change-registry-values-permissions