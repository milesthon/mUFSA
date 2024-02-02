For /F "Tokens=2*" %%I In ('Reg Query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList" /V ProfilesDirectory') Do Set Profiles=%%J
Call Set Profiles=%Profiles%
For /F "Delims=" %%I In ('Dir /B /AD-S-H "%Profiles%" ^| FindStr /V /B /I /C:"All Users" /C:"admin" /C:"administrator"') Do (
for /f  %%J in ('Dir /B /AD-S-H "%Profiles%" ^| FindStr /V /B /I /C:"All Users" /C:"admin" /C:"administrator"')
) do Set Profiles=%Profiles%

HKU\%j% C:\Users\%i%\NTUSER.DAT 
)
pause
