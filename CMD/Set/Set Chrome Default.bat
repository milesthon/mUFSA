@Echo off
set "URL=https://kolbi.cz/SetDefaultBrowser.zip"
set "SaveAs=C:\Users\%username%\AppData\Local\Temp\SetDefaultBrowser.zip"
powershell -command "Import-Module BitsTransfer; Start-BitsTransfer '%URL%' '%SaveAs%'"
powershell -command "Expand-Archive -Path "C:\Users\%username%\AppData\Local\Temp\SetDefaultBrowser.zip" -DestinationPath "C:\Users\%username%\AppData\Local\Temp" -Force"
"C:\Users\%username%\AppData\Local\Temp\SetDefaultBrowser\SetDefaultBrowser.exe" chrome
del "C:\Users\%username%\AppData\Local\Temp\SetDefaultBrowser.zip" /q
del "C:\Users\%username%\AppData\Local\Temp\SetDefaultBrowser\*" /q
rd "C:\Users\%username%\AppData\Local\Temp\SetDefaultBrowser" /q