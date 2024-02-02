@echo off

set /p "user=UserName:"
set /p "pass=PassWord:"
net user "%user%" "%pass%" /add /expires:never /passwordchg:no /fullname:"%user%"
CHCP 65001>NUL
net localgroup | find /i "Администраторы" > nul && goto RU
CHCP 866>NUL
net localgroup | find /i "Administrators" > nul && goto US

:RU
CHCP 65001>NUL
net localgroup Пользователи %Computername%\"%user%" /delete
net localgroup Администраторы %Computername%\"%user%" /add
CHCP 866>NUL
pause&exit

:US
net localgroup Administrators %Computername%\"%user%" /add
net localgroup Users %Computername%\"%user%" /delete
CHCP 866>NUL
pause&exit