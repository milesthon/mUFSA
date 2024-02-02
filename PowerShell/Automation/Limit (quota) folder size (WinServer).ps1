if (-not (Get-Module -ListAvailable -Name FileServerResourceManager)) {
    Install-WindowsFeature -Name FS-Resource-Manager -IncludeManagementTools
}

Import-Module FileServerResourceManager

$Path = "PATH"
$Size = 1GB * 1 # Вы можете изменить число после * на количество гигабайт, которое вы хотите установить для квоты.

New-FsrmQuota -Path $Path -Size $Size -Description "Quota for folder"