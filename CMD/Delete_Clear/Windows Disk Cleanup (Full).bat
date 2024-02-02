@echo off
%systemroot%\system32\cmd.exe /c cleanmgr /sageset:65535 & cleanmgr /sagerun:65535
exit /s