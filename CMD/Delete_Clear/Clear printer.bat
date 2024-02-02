net stop spooler
IF EXIST "\Windows\System32\spool\PRINTERS\" del "\Windows\System32\spool\PRINTERS\*.*" /f /s /q
net start spooler
echo Очередь печати очищена