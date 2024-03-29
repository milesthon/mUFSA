function unInstallTeams($path) {

  $clientInstaller = "$($path)\Update.exe"
  
   try {
        $process = Start-Process -FilePath "$clientInstaller" -ArgumentList "--uninstall /s" -PassThru -Wait -ErrorAction STOP

        if ($process.ExitCode -ne 0)
    {
      Write-Error "UnInstallation failed with exit code  $($process.ExitCode)."
        }
    }
    catch {
        Write-Error $_.Exception.Message
    }

}

# Remove Teams Machine-Wide Installer
Write-Host "Removing Teams Machine-wide Installer" -ForegroundColor Yellow

$MachineWide = Get-WmiObject -Class Win32_Product | Where-Object{$_.Name -eq "Teams Machine-Wide Installer"}
$MachineWide.Uninstall()

# Get all Users
$Users = Get-ChildItem -Path "$($ENV:SystemDrive)\Users"

# Process all the Users
$Users | ForEach-Object {
        Write-Host "Process user: $($_.Name)" -ForegroundColor Yellow

        #Locate installation folder
        $localAppData = "$($ENV:SystemDrive)\Users\$($_.Name)\AppData\Local\Microsoft\Teams"
        $programData = "$($env:ProgramData)\$($_.Name)\Microsoft\Teams"

        If (Test-Path "$($localAppData)\Current\Teams.exe") 
        {
          unInstallTeams($localAppData)
    
        }
        elseif (Test-Path "$($programData)\Current\Teams.exe") {
          unInstallTeams($programData)
        }
        else {
          Write-Warning  "Teams installation not found for user $($_.Name)"
        }
}