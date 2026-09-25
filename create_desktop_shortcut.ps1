$desktop = [Environment]::GetFolderPath('Desktop')
$shortcutPath = Join-Path $desktop "Solo Leveling System.lnk"
$wsh = New-Object -ComObject WScript.Shell
$shortcut = $wsh.CreateShortcut($shortcutPath)
$shortcut.TargetPath = "wscript.exe"
$shortcut.Arguments = "`"d:\Mark-L-main\solo_leveling_system\Solo_Leveling_System.vbs`""
$shortcut.WorkingDirectory = "d:\Mark-L-main\solo_leveling_system"
$shortcut.Description = "Solo Leveling Real-Life Hunter System Application"
$shortcut.Save()
Write-Host "Created Desktop Shortcut: $shortcutPath"
