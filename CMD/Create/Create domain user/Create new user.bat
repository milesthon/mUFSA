@echo off
CHCP 65001>NUL
set /p "user=UserName:"
set "pass=%user%!"
net user %user% %pass% /add /comment:"Логин: %user% | Пароль: %user%!" /expires:never /passwordchg:no /fullname:%user% /passwordchg:no
dsmove "CN=%user%,CN=Users,DC=domain,DC=local" -newparent "OU=folder,DC=domain,DC=local"
DSMOD user "CN=%user%,OU=folder,DC=domain,DC=local" -hmdir "\\server\home" -hmdrv O

CHCP 866>NUL
pause