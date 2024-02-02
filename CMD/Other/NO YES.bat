@ECHO Off
Echo. [101;41mDisable Windows Update? (Keep Enabled For Windows Store):[0m
Echo. Press "Y" to apply.
Echo. Press "N" to skip.
Echo.
SET /P choice=  [101;42mY / N:[0m  
IF /I "%choice%"=="Y" goto apply
IF /I "%choice%"=="N" goto next
Echo.
:apply
echo YES
:next 
Echo NO
pause