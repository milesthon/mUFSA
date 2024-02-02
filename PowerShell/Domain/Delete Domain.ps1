$user = "domain\login"
$pass = ConvertTo-SecureString -String 'password' -Force  -AsPlainText
$cred = New-Object System.Management.Automation.PSCredential($user,$pass)
add-computer -DomainName WORKGROUP -credential $cred

Get-NetAdapter | Set-DnsClientServerAddress -ResetServerAddresses