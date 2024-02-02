@echo off
setlocal

:: URL
set "url1=https://url.ru/printer-x32.exe"
set "url2=https://url.ru/service-x32.msi"

:: Path
set "savePath1=printer-x32.exe"
set "savePath2=service-x32.msi"

call :downloadFile "%url1%" "%savePath1%"
call :downloadFile "%url2%" "%savePath2%"

pause

:downloadFile
where /q curl
if %errorlevel% equ 0 (
    echo Downloading with curl to "%~2"...
    curl -# -L "%~1" -o "%~2"
    if %errorlevel% equ 0 (
        echo Download OK
    ) else (
        echo Download Fail
        goto useBitsadmin
    )
) else (
    powershell -command "& {if (Get-Command -Name 'Import-Module' -ErrorAction SilentlyContinue) {echo 'true'} else {echo 'false'}}" > check.txt
    set /p hasPowerShell=<check.txt
    del check.txt
    if "%hasPowerShell%"=="true" (
        echo Downloading with PowerShell to "%~2"...
        powershell -command "& {Import-Module BitsTransfer; Start-BitsTransfer -Source '%~1' -Destination '%~2'}"
        if %errorlevel% equ 0 (
            echo Download OK
        ) else (
            echo Download Fail
            goto useBitsadmin
        )
    ) else (
        :useBitsadmin
        echo Downloading with bitsadmin to "%~2"...
        bitsadmin /transfer myDownloadJob /download /priority normal "%~1" "%~dp0%~2"
        if %errorlevel% equ 0 (
            echo Download OK
        ) else (
            echo Download Fail
        )
    )
)
goto :eof

endlocal
