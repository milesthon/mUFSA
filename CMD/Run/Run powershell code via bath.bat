<# :
@echo off
powershell /nop /ex bypass "&{[ScriptBlock]::Create((gc '%~f0') -join [Char]10).Invoke()}"
exit /b
#>

КОД ПОВЕРШЕЛ