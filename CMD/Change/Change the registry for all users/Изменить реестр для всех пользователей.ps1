$PatternSID = 'S-1-5-21-\d+-\d+\-\d+\-\d+$'
$ProfileList = gp 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList\*' | Where-Object {$_.PSChildName -match $PatternSID} | 
 Select  @{name="SID";expression={$_.PSChildName}}, 
         @{name="UserHive";expression={"$($_.ProfileImagePath)\ntuser.dat"}}, 
         @{name="Username";expression={$_.ProfileImagePath -replace '^(.*[\\\/])', ''}}
$LoadedHives = gci Registry::HKEY_USERS | ? {$_.PSChildname -match $PatternSID} | Select @{name="SID";expression={$_.PSChildName}}
$UnloadedHives = Compare-Object $ProfileList.SID $LoadedHives.SID | Select @{name="SID";expression={$_.InputObject}}, UserHive, Username
 Foreach ($item in $ProfileList) {
 IF ($item.SID -in $UnloadedHives.SID) {
 reg load HKU\$($Item.SID) $($Item.UserHive) | Out-Null
}
 #####################################################################
 
 #  Get-ItemProperty registry::HKEY_USERS\$($Item.SID)\SOFTWARE\Policies\Microsoft\Windows\System -Name DisableCMD -Value 0 -Force
     
 #####################################################################
      
 IF ($item.SID -in $UnloadedHives.SID) {
 [gc]::Collect()
 reg unload HKU\$($Item.SID) | Out-Null
 }
}