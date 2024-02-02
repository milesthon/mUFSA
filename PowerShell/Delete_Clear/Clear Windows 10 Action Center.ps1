start ms-actioncenter:
Add-Type -AssemblyName System.Windows.Forms
Start-Sleep -MilliSeconds 1000
[System.Windows.Forms.SendKeys]::SendWait("+{TAB}")
Start-Sleep -MilliSeconds 1000
[System.Windows.Forms.SendKeys]::SendWait("+{TAB}")
Start-Sleep -MilliSeconds 1000
[System.Windows.Forms.SendKeys]::SendWait(" ")
Start-Sleep -MilliSeconds 1000
[System.Windows.Forms.SendKeys]::SendWait("{ESC}")