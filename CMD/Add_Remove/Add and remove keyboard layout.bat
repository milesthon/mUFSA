:: https://docs.microsoft.com/ru-ru/troubleshoot/windows-client/deployment/automate-regional-language-settings
:: Перед знаками < / > надо ставить ^

@ECHO OFF

Set txtfile="C:\Users\%UserName%\AppData\Local\Temp\test.xml"
(
Echo ^<gs:GlobalizationServices xmlns:gs="urn:longhornGlobalizationUnattend"^>
Echo.
Echo  ^<gs:UserList^>
Echo  ^<gs:User UserID="Current" CopySettingsToDefaultUserAcct="true" CopySettingsToSystemAcct="true"^/^>
Echo  ^<^/gs:UserList^>
Echo.
Echo  ^<^gs:InputPreferences^>
Echo  ^<gs:InputLanguageID Action="add" ID="0409:00000409"^/^>
Echo  ^<^/gs:InputPreferences^>
Echo.
Echo ^<^/gs:GlobalizationServices^>
)>"%txtfile%"

control intl.cpl,, /f:"C:\Users\%UserName%\AppData\Local\Temp\test.xml"

del "C:\Users\%UserName%\AppData\Local\Temp\test.xml" /f