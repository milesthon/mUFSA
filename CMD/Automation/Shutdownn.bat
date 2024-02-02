@echo off
mode 80,10

:menu
cls
CHCP 65001>NUL
color 07
echo.&set /p answer="выключить - 1, перезагрузить - 2, отменить - 0: "
goto %answer%

:1
echo.&set /p timer="Выключить компьютер через (минут): "
set /A time="%timer% * 60"
color C
echo.&echo   Компьютер будет выключен через %time% минут
CHCP 866>NUL
shutdown -s -f -t %time%
TIMEOUT /T 2 /nobreak
goto menu

:2
echo.&set /p timer="Перезагрузить компьютер через (минут): "
set /A time="%timer% * 60"
color E
echo.&echo Компьютер будет перезагружен через %time% минут
CHCP 866>NUL
shutdown -r -f -t %time%
TIMEOUT /T 2 /nobreak
goto menu

:0
color A
echo.&echo   Запланированное завершение работы Windows отменено.
CHCP 866>NUL
shutdown -a
TIMEOUT /T 2 /nobreak
goto menu