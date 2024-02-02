@Echo on
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d "0x5" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorUser" /t REG_DWORD /d "0x3" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0x1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "FilterAdministratorToken" /t REG_DWORD /d "0x0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "PromptOnSecureDesktop" /t REG_DWORD /d "0x1" /f
pause
