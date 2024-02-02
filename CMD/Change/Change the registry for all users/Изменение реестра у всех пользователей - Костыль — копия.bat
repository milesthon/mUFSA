SetLocal EnableExtensions

For /F "Tokens=2*" %%I In ('Reg Query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList" /V ProfilesDirectory') Do Set Profiles=%%J
Call Set Profiles=%Profiles%

For /F "Delims=" %%I In ('Dir /B /AD-S-H "%Profiles%" ^| FindStr /V /B /I /C:"All Users"') Do (
  REG LOAD HKU\%%I C:\Users\%%I\NTUSER.DAT
 reg delete "HKU\%%I\SOFTWARE\Policies\Microsoft\Windows\System" /v DisableCMD /f
)
pause