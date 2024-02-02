@ECHO OFF
CHCP 65001>NUL
set /p "Name=Name: "
set /p "Family=Family: "
set /p "Initial=Initial: "
set /p "User=UserName: "
set "Pass=Temp123"
net user %user% %pass% /add /comment:"Логин: %user% | Временный пароль: password" /expires:never /passwordchg:no /fullname:%user% /passwordchg:no
dsmove "CN=%user%,CN=Users,DC=domain,DC=local" -newparent "OU=folder,DC=domain,DC=local"
DSMOD user "CN=%user%,OU=folder,DC=domain,DC=local" -fn %Name% -ln %Family% -mi %Initial% -profile "\\server\UserProfiles\folder\%user%"
md "\\server\UserProfiles\folder\%user%"
echo Y|cacls "\\server\UserProfiles\folder\%user%" /P SYSTEM:F "Администраторы Домена":F %user%:F

CHCP 866>NUL
pause