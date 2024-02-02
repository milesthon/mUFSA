@ECHO OFF

sfc /scannow
pause

DISM /Online /Cleanup-image /ScanHealth
DISM /Online /Cleanup-Image /CheckHealth
DISM /Online /Cleanup-image /RestoreHealth
:: DISM /Online /Cleanup-Image /StartComponentCleanup
pause

chkdsk c: /F /R
pause