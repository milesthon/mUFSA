@ECHO OFF

SC STOP WSearch  2>nul >nul

TaskKill /F /IM SearchApp.exe
TaskKill /F /IM SearchIndexer.exe

REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /F 2>nul >nul

REG ADD "HKLM\SOFTWARE\Microsoft\Windows Search" /v SetupCompletedSuccessfully /D 1 /T REG_DWORD /F 2>nul >nul

REG COPY "HKLM\SOFTWARE\Microsoft\Windows Search\FileChangeClientConfigs" "HKLM\SOFTWARE\Microsoft\Windows Search\FileChangeClientConfigsBak" /S /F 2>nul >nul
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows Search\FileChangeClientConfigs"                                                                      /F 2>nul >nul

PowerShell -Command "Get-AppXPackage | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register '$($_.InstallLocation)\AppXManifest.xml'}" 2>nul >nul

SC START WSearch 2>nul >nul

PowerShell -Command "Get-Process explorer | Stop-Process" 2>nul >nul