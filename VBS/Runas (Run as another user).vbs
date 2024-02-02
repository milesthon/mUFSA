set WshShell = WScript.CreateObject("Wscript.Shell")
WshShell.run "runas /user:domain\login /savecred " + Chr(34) + "C:\notepad.exe /args" + Chr(34)
WScript.Sleep 500
WshShell.SendKeys "password"
WshShell.SendKeys "{ENTER}"
set WshShell = nothing