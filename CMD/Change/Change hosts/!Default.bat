@ECHO OFF
CHCP 65001>NUL

takeown /f "C:\Windows\system32\drivers\etc\hosts"
icacls "C:\Windows\system32\drivers\etc\hosts" /grant %UserName%:F /t /q
DEL /F /A /Q "C:\Windows\system32\drivers\etc\hosts"

(
Echo # Copyright ^(c^) 1993-2009 Microsoft Corp.
Echo #
Echo # This is a sample HOSTS file used by Microsoft TCP/IP for Windows.
Echo #
Echo # This file contains the mappings of IP addresses to host names. Each
Echo # entry should be kept on an individual line. The IP address should
Echo # be placed in the first column followed by the corresponding host name.
Echo # The IP address and the host name should be separated by at least one
Echo # space.
Echo #
Echo # Additionally, comments ^(such as these^) may be inserted on individual
Echo # lines or following the machine name denoted by a '#' symbol.
Echo #
Echo # For example:
Echo #
Echo #      102.54.94.97     rhino.acme.com          # source server
Echo #       38.25.63.10     x.acme.com              # x client host
Echo.
Echo # localhost name resolution is handled within DNS itself.
Echo #	127.0.0.1       localhost
Echo #	::1             localhost
)>"C:\Windows\system32\drivers\etc\hosts"