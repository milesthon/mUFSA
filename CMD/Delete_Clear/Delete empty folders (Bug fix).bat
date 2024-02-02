schtasks /change /disable /tn "\Microsoft\Windows\Management\Provisioning\Logon"

del /s /q "C:\Windows\System32\config\systemprofile\AppData\Local\*.tmp"
for /d %%p in ("C:\Windows\System32\config\systemprofile\AppData\Local\*.tmp") do rmdir "%%p" /s /q