@ECHO OFF
echo x=msgbox("Your Text Here" ,0, "Your Title Here") >> "C:\Users\%UserName%\AppData\Local\Temp\msgbox.vbs"

start /wait msgbox.vbs

del /q "C:\Users\%UserName%\AppData\Local\Temp\msgbox.vbs"