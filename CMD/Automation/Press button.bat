powershell -command (New-Object -ComObject Wscript.Shell).SendKeys([string] [char] 173)

:: powershell -command $obj = new-object -com wscript.shell; $obj.SendKeys([char]173)

:: https://learn.microsoft.com/ru-ru/office/vba/Language/Reference/user-interface-help/sendkeys-statement