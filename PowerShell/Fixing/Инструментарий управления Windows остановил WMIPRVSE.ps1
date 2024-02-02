$config = gwmi -Class “__ProviderHostQuotaConfiguration” -Namespace root
$config | select -Property * -ExcludeProperty __* | ft -AutoSize
$config.HandlesPerHost = 8192
$config.ThreadsPerHost = 512
$config.Put()