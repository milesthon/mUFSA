@ECHO OFF

if not exist "%UserProfile%\3D Objects"      (
mkdir "%UserProfile%\3D Objects"
attrib +r -s -h "%UserProfile%\3D Objects"      /S /D 
) 2>nul >nul
if not exist "%UserProfile%\Contacts"        (
mkdir "%UserProfile%\Contacts"
attrib +r -s -h "%UserProfile%\Contacts"        /S /D
) 2>nul >nul
if not exist "%UserProfile%\Desktop"         (
mkdir "%UserProfile%\Desktop"
attrib +r -s -h "%UserProfile%\Desktop"         /S /D
) 2>nul >nul
if not exist "%UserProfile%\Documents"       (
mkdir "%UserProfile%\Documents"
attrib +r -s -h "%UserProfile%\Documents"       /S /D
) 2>nul >nul
if not exist "%UserProfile%\Downloads"       ( 
mkdir "%UserProfile%\Downloads"
attrib +r -s -h "%UserProfile%\Downloads"       /S /D
) 2>nul >nul
if not exist "%UserProfile%\Favorites"       (
mkdir "%UserProfile%\Favorites"
attrib +r -s -h "%UserProfile%\Favorites"       /S /D
) 2>nul >nul
if not exist "%UserProfile%\Links"           (
mkdir "%UserProfile%\Links"
attrib +r -s -h "%UserProfile%\Links"           /S /D
) 2>nul >nul
if not exist "%UserProfile%\Music"           (
mkdir "%UserProfile%\Music"
attrib +r -s -h "%UserProfile%\Music"           /S /D
) 2>nul >nul
if not exist "%UserProfile%\Pictures"        (
mkdir "%UserProfile%\Pictures"
attrib +r -s -h "%UserProfile%\Pictures"        /S /D
) 2>nul >nul
if not exist "%UserProfile%\Saved Games"     (
mkdir "%UserProfile%\Saved Games"
attrib +r -s -h "%UserProfile%\Saved Games"     /S /D
) 2>nul >nul
if not exist "%UserProfile%\Searches"        (
mkdir "%UserProfile%\Searches"
attrib +r -s -h "%UserProfile%\Searches"        /S /D
) 2>nul >nul
if not exist "%UserProfile%\Videos"          (
mkdir "%UserProfile%\Videos"
attrib +r -s -h "%UserProfile%\Videos"          /S /D
) 2>nul >nul
if not exist "%UserProfile%\Videos\Captures" (
mkdir "%UserProfile%\Videos\Captures"
attrib +r -s -h "%UserProfile%\Videos\Captures" /S /D
) 2>nul >nul

REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "{00BCFC5A-ED94-4E48-96A1-3F6217F21990}" /D "C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\RoamingTiles"             /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "{1B3EA5DC-B587-4786-B4EF-BD1DC332AEAE}" /D "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Libraries"              /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "{A520A1A4-1780-4FF6-BD18-167343C5AF16}" /D "C:\Users\%USERNAME%\AppData\LocalLow"                                         /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "Administrative Tools" /D "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Administrative Tools" /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "AppData" /D "C:\Users\%USERNAME%\AppData\Roaming"                                                                         /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "Cache" /D "C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\INetCache"                                                 /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "CD Burning" /D "C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Burn\Burn"                                            /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "Cookies" /D "C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\INetCookies"                                             /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "{31C0DD25-9439-4F12-BF41-7FF4EDA38722}" /D "C:\Users\%USERNAME%\3D Objects"                                               /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "{56784854-C6CB-462B-8169-88E350ACB882}" /D "C:\Users\%USERNAME%\Contacts"                                                 /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "Desktop" /D "C:\Users\%USERNAME%\Desktop"                                                                                 /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "Personal" /D "C:\Users\%USERNAME%\Documents"                                                                              /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "{374DE290-123F-4565-9164-39C4925E467B}" /D "C:\Users\%USERNAME%\Downloads"                                                /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "Favorites" /D "C:\Users\%USERNAME%\Favorites"                                                                             /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "Fonts" /D "C:\windows\Fonts"                                                                                              /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "History" /D "C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\History"                                                 /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "Local AppData" /D "C:\Users\%USERNAME%\AppData\Local"                                                                     /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "{BFB9D5E0-C6A9-404C-B2B2-AE6DB6AF4968}" /D "C:\Users\%USERNAME%\Links"                                                    /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "My Music" /D "C:\Users\%USERNAME%\Music"                                                                                  /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "My Pictures" /D "C:\Users\%USERNAME%\Pictures"                                                                            /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "{4C5C32FF-BB9D-43B0-B5B4-2D72E54EAAA4}" /D "C:\Users\%USERNAME%\Saved Games"                                              /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "{7D1D3A04-DEBB-4115-95CF-2F29DA2920DA}" /D "C:\Users\%USERNAME%\Searches"                                                 /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "My Video" /D "C:\Users\%USERNAME%\Videos"                                                                                 /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "NetHood" /D "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Network Shortcuts"                                     /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "PrintHood" /D "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Printer Shortcuts"                                   /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "Programs" /D "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs"                                  /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "Recent" /D "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Recent"                                                 /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "SendTo" /D "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\SendTo"                                                 /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "Start Menu" /D "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu"                                         /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "Startup" /D "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"                           /T REG_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "Templates" /D "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Templates"                                           /T REG_SZ /F 2>nul >nul

REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "AppData" /D %%USERPROFILE%%"\AppData\Roaming"                                               /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "Cache" /D %%USERPROFILE%%"\AppData\Local\Microsoft\Windows\INetCache"                       /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "Cookies" /D %%USERPROFILE%%"\AppData\Local\Microsoft\Windows\INetCookie"                    /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "{31C0DD25-9439-4F12-BF41-7FF4EDA38722}" /D %%USERPROFILE%%"\3D Objects"                     /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "{56784854-C6CB-462B-8169-88E350ACB882}" /D %%USERPROFILE%%"\Contacts"                       /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "Desktop" /D %%USERPROFILE%%"\Desktop"                                                       /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "{f42ee2d3-909f-4907-8871-4c22fc0bf756}" /D %%USERPROFILE%%"\Documents"                      /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "Personal" /D %%USERPROFILE%%"\Documents"                                                    /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "{374DE290-123F-4565-9164-39C4925E467B}" /D %%USERPROFILE%%"\Downloads"                      /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "{7D83EE9B-2244-4E70-B1F5-5393042AF1E4}" /D %%USERPROFILE%%"\Downloads"                      /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "Favorites" /D %%USERPROFILE%%"\Favorites"                                                   /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "History" /D %%USERPROFILE%%"\AppData\Local\Microsoft\Windows\History"                       /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "Local AppData" /D %%USERPROFILE%%"\AppData\Local"                                           /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "{BFB9D5E0-C6A9-404C-B2B2-AE6DB6AF4968}" /D %%USERPROFILE%%"\Links"                          /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "{A0C69A99-21C8-4671-8703-7934162FCF1D}" /D %%USERPROFILE%%"\Music"                          /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "My Music" /D %%USERPROFILE%%"\Music"                                                        /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "{0DDD015D-B06C-45D5-8C4C-F59713854639}" /D %%USERPROFILE%%"\Pictures"                       /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "My Pictures" /D %%USERPROFILE%%"\Pictures"                                                  /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "{4C5C32FF-BB9D-43B0-B5B4-2D72E54EAAA4}" /D %%USERPROFILE%%"\Saved Games"                    /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "{7D1D3A04-DEBB-4115-95CF-2F29DA2920DA}" /D %%USERPROFILE%%"\Searches"                       /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "My Videos" /D %%USERPROFILE%%"\Videos"                                                      /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "{35286A68-3C57-41A1-BBB1-0EAE73D76C95}" /D %%USERPROFILE%%"\Videos"                         /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "{EDC0FE71-98D8-4F4A-B920-C8DC133CB165}" /D %%USERPROFILE%%"\Videos\Captures"                /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "NetHood" /D %%USERPROFILE%%"\AppData\Roaming\Microsoft\Windows\Network Shortcuts"           /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "PrintHood" /D %%USERPROFILE%%"\AppData\Roaming\Microsoft\Windows\Printer Shortcuts"         /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "Programs" /D %%USERPROFILE%%"\AppData\Roaming\Microsoft\Windows\Start Menu\Programs"        /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "Recent" /D %%USERPROFILE%%"\AppData\Roaming\Microsoft\Windows\Recent"                       /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "SendTo" /D %%USERPROFILE%%"\AppData\Roaming\Microsoft\Windows\SendTo"                       /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "Start Menu" /D %%USERPROFILE%%"\AppData\Roaming\Microsoft\Windows\Start Menu"               /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "Startup" /D %%USERPROFILE%%"\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "Templates" /D %%USERPROFILE%%"\AppData\Roaming\Microsoft\Windows\Templates"                 /T REG_EXPAND_SZ /F 2>nul >nul

REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "Common Administrative Tools" /D "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Administrative Tools" /T REG_SZ /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "Common AppData" /D "C:\ProgramData"                                                                         /T REG_SZ /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "Common Desktop" /D "C:\Users\Public\Desktops"                                                               /T REG_SZ /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "Common Documents" /D "C:\Users\Public\Documents"                                                            /T REG_SZ /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "Common Programs" /D "C:\ProgramData\Microsoft\Windows\Start Menu\Programs"                                  /T REG_SZ /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "Common Start Menu" /D "C:\ProgramData\Microsoft\Windows\Start Menu"                                         /T REG_SZ /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "Common Startup" /D "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup"                           /T REG_SZ /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "Common Templates" /D "C:\ProgramData\Microsoft\Windows\Templates"                                           /T REG_SZ /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "CommonMusic" /D "C:\Users\Public\Music"                                                                     /T REG_SZ /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "CommonPictures" /D "C:\Users\Public\Pictures"                                                               /T REG_SZ /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "CommonVideo" /D "C:\Users\Public\Videos"                                                                    /T REG_SZ /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V "OEM Links" /D "C:\ProgramData\OEM\Links"                                                                    /T REG_SZ /F 2>nul >nul

REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "Common AppData" /D %%ProgramData%%                                                 /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "Common Desktop" /D %%PUBLIC%%"\Desktop"                                            /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "{3D644C9B-1FB8-4f30-9B45-F670235F79C0}" /D %%PUBLIC%%"\Downloads"                  /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "CommonVideo" /D %%PUBLIC%%"\Videos"                                                /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "Common Programs" /D %%ProgramData%%"\Microsoft\Windows\Start Menu\Programs"        /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "Common Start Menu" /D %%ProgramData%%"\Microsoft\Windows\Start Menu"               /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "Common Startup" /D %%ProgramData%%"\Microsoft\Windows\Start Menu\Programs\Startup" /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "Common Templates" /D %%ProgramData%%"\Microsoft\Windows\Templates"                 /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "CommonMusic" /D %%PUBLIC%%"\Music"                                                 /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "CommonPictures" /D %%PUBLIC%%"\Pictures"                                           /T REG_EXPAND_SZ /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /V "CommonVideo" /D %%PUBLIC%%"\Videos"                                                /T REG_EXPAND_SZ /F 2>nul >nul