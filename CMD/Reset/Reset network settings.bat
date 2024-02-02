@echo off

ipconfig /release
ipconfig /renew
ipconfig /flushdns
ipconfig /registerdns
netsh winsock reset all
netsh winhttp reset proxy
netsh int ip reset all
netsh int tcp reset all
netsh int 6to4 reset all
netsh int ipv4 reset all
netsh int ipv6 reset all
netsh int teredo reset all
netsh int isatap reset all
netsh int portproxy reset all
netsh int httpstunnel reset all
netsh interface ip delete arpcache
fsutil resource setautoreset true C:\

pause