@echo off
CHCP 65001>NUL

set FOLDER="C:\Users\%username%\Desktop\1\w"
set ZIP="C:\Users\%username%\Desktop\1\1.zip"

set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs% echo Set objArgs = WScript.Arguments
>>%vbs% echo Set FS = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo InputFolder = FS.GetAbsolutePathName(objArgs(0))
>>%vbs% echo ZipFile = FS.GetAbsolutePathName(objArgs(1))
>>%vbs% echo CreateObject("Scripting.FileSystemObject").CreateTextFile(ZipFile, True).Write "PK" ^& Chr(5) ^& Chr(6) ^& String(18, vbNullChar)
>>%vbs% echo Set objShell = CreateObject("Shell.Application")
>>%vbs% echo Set source = objShell.NameSpace(InputFolder).Items
>>%vbs% echo objShell.NameSpace(ZipFile).CopyHere(source)
>>%vbs% echo wScript.Sleep 2000
cscript //nologo %VBS% %FOLDER% %ZIP%
if exist %vbs% del /f /q %vbs%

pause