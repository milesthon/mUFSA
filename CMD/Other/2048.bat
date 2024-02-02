@echo off
setlocal enabledelayedexpansion

set f=for /l %%I in (0,1,15) do
%f% set _%%I=0
call :Put
call :Put
set w=3 4 -1
set a=12 1 -4
set s=12 -4 1
set d=3 -1 4

:Main
call :Join [
cls
echo;+----+
for %%I in (0,4,8,12) do (set z=![:~%%I,4!&echo;^|!z:0= !^|)
echo;+----+
call :Check
set _=&set /p _=^>
echo;%_:~0,1%|findstr "w a s d"||set _=
for %%I in (0,1,2,3) do call :Swing %%I !%_:~0,1%!
call :Join ]
if "%[%" neq "%]%" call :Put
goto :Main

:Put
set c=0
%f% if !_%%I! == 0 (set c!c!=%%I&set /a c+=1)
set /a r=%random%%%c
set /a _!c%r%!=^^^!(%random%%%8)+1
exit /b

:Check
%f% set $%%I=!_%%I!
set $=
for %%J in (w a s d) do (
  for %%I in (0,1,2,3) do call :Swing %%I !%%J!
  call :Join ]
  if "%[%" neq "!]!" set $=1
)
if not defined $ (echo;GAME OVER^^^!&pause&exit)
%f% set _%%I=!$%%I!
exit /b

:Join
set %1=
%f% set %1=!%1!!_%%I!
exit /b

:Swing
if "%2" == "" exit /b
if "%4" neq "" (set /a i=%2+%4*%1&set /a j=i+%3&set k=%3)
set /a l=i+k
if !_%j%! neq 0 (
  if !_%i%! == 0 (
    set _%i%=!_%j%!&set _%j%=0&set /a i-=k
  ) else if !_%i%! == !_%j%! (
    set /a b=0x!_%i%!+1
    cmd /c exit /b !b!
    set _%i%=!=ExitCode:~-1!
    set _%j%=0
  ) else if %l% neq %j% (
    set _%l%=!_%j%!&set _%j%=0
  )
  set /a i+=k
)
set /a j+=k
shift&goto :Swing