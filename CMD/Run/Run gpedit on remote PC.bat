@echo off
CHCP 65001>NUL
set /p "PC=hostname: "

start gpedit.msc /gpcomputer:"%PC%"