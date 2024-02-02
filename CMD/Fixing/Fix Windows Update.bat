:::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                   by  MilesthoN                     ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@ECHO OFF
CHCP 65001>NUL
COLOR F9
TITLE Fix Update (Windows 10, 11) by MilesthoN
MODE 62,8
ECHO.&ECHO.&ECHO.&ECHO                Run as Administrator..&ECHO                Запуск от имени Администратора..&ECHO.&ECHO.
net sess>NUL 2>&1||(powershell try{saps '%0'-Verb RunAs}catch{}&exit)

cls

MODE 62,26
COLOR F9
ECHO.&ECHO.&ECHO.&ECHO.
CALL :COLOR F5
CALL :ECHO "                              ###"
CALL :COLOR F5
CALL :ECHO "                           #######"
CALL :COLOR F5
CALL :ECHO "                         #########"
CALL :COLOR F5
CALL :ECHO "                        #########"
CALL :COLOR FD
CALL :ECHO "                      ###########" /
CALL :COLOR FD
CALL :ECHO "    #####"
CALL :COLOR FD
CALL :ECHO "                     ###########" /
CALL :COLOR FD
CALL :ECHO "  ########"
CALL :COLOR F1
CALL :ECHO "                    #####" /
CALL :COLOR F1
CALL :ECHO "  ###############"
CALL :COLOR F1
CALL :ECHO "                    ####" /
CALL :COLOR F1
CALL :ECHO "   ###############"
CALL :COLOR F9
CALL :ECHO "                           #######" /
CALL :COLOR F9
CALL :ECHO "  ######"
CALL :COLOR F9
CALL :ECHO "                            ###" /
CALL :COLOR F9
CALL :ECHO "     #####"
CALL :COLOR F3
CALL :ECHO "                                    ####"
CALL :COLOR F3
CALL :ECHO "                                   ####"
CALL :COLOR F3
CALL :ECHO "                                   ####"
CALL :COLOR F3
CALL :ECHO "                                   ####"
CALL :COLOR FB
CALL :ECHO "                                   ####"
CALL :COLOR FB
CALL :ECHO "                                  #####"
CALL :COLOR FB
CALL :ECHO "                                   ####"
CALL :COLOR FB
CALL :ECHO "                                    ####"
ping localhost -n 2 >NUL
goto WinUpdateFix
exit/b
:COLOR
 set c=%1& exit/b
:ECHO
 for /f %%i in ('"prompt $h& for %%i in (.) do rem"') do (
  pushd "%~dp0"& <NUL>"%~1_" set/p="%%i%%i  "& findstr/a:%c% . "%~1_*"
  (if "%~2" neq "/" ECHO.)& del "%~1_"& popd& set c=& exit/b
 )

:WinUpdateFix
cls

MODE 62,8

ECHO.&ECHO.
ECHO        Stop services..
ECHO        Остановка сервисов..
ECHO        [32m[5m░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
net stop bits     2>nul >nul
net stop wuauserv 2>nul >nul
net stop appidsvc 2>nul >nul
net stop cryptsvc 2>nul >nul

cls

ECHO.&ECHO.
ECHO        Delete files Update..
ECHO        Удаление файлов обновления..
ECHO        [32m[5m░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
Ipconfig /flushdns                                                2>nul >nul
PowerShell -Command                                                        ^
Remove-Item                                                                ^
'C:\ProgramData\Application Data\Microsoft\Network\Downloader\qmgr*.dat' , ^
'C:\ProgramData\icrosoft\Network\Downloader\qmgr*.dat'                   , ^
'C:\Windows\Logs\WindowsUpdate\*'                                        , ^
'C:\Windows\Logs\SoftwareDistribution\*'                                   ^
-Recurse -Force                                                   2>nul >nul
if exist "C:\Windows\winsxs\pending.xml.bak" del /s /q /f "C:\Windows\winsxs\pending.xml.bak"
if exist "C:\Windows\winsxs\pending.xml" (
takeown /f "C:\Windows\winsxs\pending.xml"
attrib -r -s -h /s /d "C:\Windows\winsxs\pending.xml"
ren "C:\Windows\winsxs\pending.xml" pending.xml.bak
) 2>nul >nul
if exist "C:\Windows\system32\Catroot2.bak" rmdir /s /q "C:\Windows\system32\Catroot2.bak"
if exist "C:\Windows\system32\Catroot2" (
attrib -r -s -h /s /d "C:\Windows\system32\Catroot2"
ren "C:\Windows\system32\Catroot2" Catroot2.bak
) 2>nul >nul

cls

ECHO.&ECHO.
ECHO        Reset GPO settings..
ECHO        Сброс Настроек GPO..
ECHO        [32m[5m░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
REG DELETE "HKCU\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate"                /F 2>nul >nul
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\WindowsUpdate" /F 2>nul >nul
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate"                /F 2>nul >nul
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\WindowsUpdate" /F 2>nul >nul
gpupdate /force                                                                       2>nul >nul

cls

ECHO.&ECHO.
ECHO        Reset BITS service..
ECHO        Сброс сервисов BITS..
ECHO        [32m[5m░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
sc.exe sdset bits D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;AU)(A;;CCLCSWRPWPDTLOCRRC;;;PU)     2>nul >nul
sc.exe sdset wuauserv D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;AU)(A;;CCLCSWRPWPDTLOCRRC;;;PU) 2>nul >nul

cls

ECHO.&ECHO.
ECHO        Reregister BITS files..
ECHO        Регистрация файлов BITS..
ECHO        [32m[5m░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
cd /d %windir%\system32      2>nul >nul
regsvr32.exe /s atl.dll      2>nul >nul
regsvr32.exe /s urlmon.dll   2>nul >nul
regsvr32.exe /s mshtml.dll   2>nul >nul
regsvr32.exe /s shdocvw.dll  2>nul >nul
regsvr32.exe /s browseui.dll 2>nul >nul
regsvr32.exe /s jscript.dll  2>nul >nul
regsvr32.exe /s vbscript.dll 2>nul >nul
regsvr32.exe /s scrrun.dll   2>nul >nul
regsvr32.exe /s msxml.dll    2>nul >nul
regsvr32.exe /s msxml3.dll   2>nul >nul
regsvr32.exe /s msxml6.dll   2>nul >nul
regsvr32.exe /s actxprxy.dll 2>nul >nul
regsvr32.exe /s softpub.dll  2>nul >nul
regsvr32.exe /s wintrust.dll 2>nul >nul
regsvr32.exe /s dssenh.dll   2>nul >nul
regsvr32.exe /s rsaenh.dll   2>nul >nul
regsvr32.exe /s gpkcsp.dll   2>nul >nul
regsvr32.exe /s sccbase.dll  2>nul >nul
regsvr32.exe /s slbcsp.dll   2>nul >nul
regsvr32.exe /s cryptdlg.dll 2>nul >nul
regsvr32.exe /s oleaut32.dll 2>nul >nul
regsvr32.exe /s ole32.dll    2>nul >nul
regsvr32.exe /s shell32.dll  2>nul >nul
regsvr32.exe /s initpki.dll  2>nul >nul
regsvr32.exe /s wuapi.dll    2>nul >nul
regsvr32.exe /s wuaueng.dll  2>nul >nul
regsvr32.exe /s wuaueng1.dll 2>nul >nul
regsvr32.exe /s wucltui.dll  2>nul >nul
regsvr32.exe /s wups.dll     2>nul >nul
regsvr32.exe /s wups2.dll    2>nul >nul
regsvr32.exe /s wuweb.dll    2>nul >nul
regsvr32.exe /s qmgr.dll     2>nul >nul
regsvr32.exe /s qmgrprxy.dll 2>nul >nul
regsvr32.exe /s wucltux.dll  2>nul >nul
regsvr32.exe /s muweb.dll    2>nul >nul
regsvr32.exe /s wuwebv.dll   2>nul >nul
regsvr32.exe /s wudriver.dll 2>nul >nul
netsh winsock reset          2>nul >nul
netsh winsock reset proxy    2>nul >nul

cls

ECHO.&ECHO.
ECHO        Set startup services type as automatic..
ECHO        Установка запуска сервисов на автоматически..
ECHO        [32m[5m░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
sc config wuauserv start= auto   2>nul >nul
sc config bits start= auto       2>nul >nul
sc config DcomLaunch start= auto 2>nul >nul

cls

ECHO.&ECHO.
ECHO        Start Services..
ECHO        Запуск сервисов..
ECHO        [32m[5m░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
net start bits     2>nul >nul
net start wuauserv 2>nul >nul
net start appidsvc 2>nul >nul
net start cryptsvc 2>nul >nul

cls

ECHO.&ECHO.
ECHO        Done! Please restart computer..
ECHO        Готово! Пожалуйста перезагрузите компьютер..
ECHO        
ECHO.&ECHO.
PAUSE 2>nul >nul