netsh interface ip set dnsservers "Ethernet" static 8.8.8.8 primary
netsh interface ip add dnsservers "Ethernet" 1.1.1.1 index=2

netsh interface ip set dnsservers "Подключение по локальной сети" static 8.8.8.8 primary
netsh interface ip add dnsservers "Подключение по локальной сети" 1.1.1.1 index=2
