Get-NetAdapter | Set-DnsClientServerAddress -ServerAddresses 192.168.0.1

$user = "domain\login"
$pass = ConvertTo-SecureString -String 'password' -Force  -AsPlainText
$cred = New-Object System.Management.Automation.PSCredential($user,$pass)
add-computer -DomainName biksfu.local -OUPath "OU=Staging,DC=domain,DC=local" -credential $cred -Restart