rem WinXP
for /f «delims=» %%i in (‘dir «%userprofile%\Application Data\1C\1Cv82\» /a:d /b’) do (IF «%%i» NEQ «ExtCompT» (IF «%%i» NEQ «tmplts» (rmdir /s /q «%userprofile%\Application Data\1C\1Cv82\%%i»)))
for /f «delims=» %%i in (‘dir «%userprofile%\Local Settings\Application Data\1C\1Cv82\» /a:d /b’) do rmdir /s /q «%userprofile%\Local Settings\Application Data\1C\1Cv82\%%i»
rem Win7
for /f «delims=» %%i in (‘dir «%userprofile%\AppData\Roaming\1C\1Cv82\» /a:d /b’) do (IF «%%i» NEQ «ExtCompT» (IF «%%i» NEQ «tmplts» (rmdir /s /q «%userprofile%\AppData\Roaming\1C\1Cv82\%%i»)))
for /f «delims=» %%i in (‘dir «%userprofile%\AppData\Local\1C\1Cv82\» /a:d /b’) do rmdir /s /q «%userprofile%\AppData\Local\1C\1Cv82\%%i»