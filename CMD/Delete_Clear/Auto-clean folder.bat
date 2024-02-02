chcp 65001

forfiles -p "?L:\folder" -s -m *.* -d -60 -c "cmd /c del /q @path"

set "in=?L:\folder"
for /r "%in%" %%i in (.) do dir /b "%%~i" | find /v "">nul || rd /s /q "%%~i"