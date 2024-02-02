@ECHO OFF

TYPE "C:\Users\%UserName%\Desktop\test.txt" | FIND /V /I "TEST" > "C:\Users\%UserName%\Desktop\test1.txt"

MOVE "C:\Users\%UserName%\Desktop\test1.txt" "C:\Users\%UserName%\Desktop\test.txt" /Y