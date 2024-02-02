@echo off

set /p "user=UserName:"
set /p "pass=PassWord:"
net user "%user%" "%pass%" /add /expires:never /passwordchg:no /fullname:"%user%"

pause