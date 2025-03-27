<#
.SYNOPSIS
	Opens the user's downloads folder
.DESCRIPTION
	This PowerShell script launches the File Explorer showing the user's downloads folder.
#>

try {
	$path = (New-Object -ComObject Shell.Application).NameSpace('shell:Downloads').Self.Path
	if (-not(Test-Path "$path" -pathType container)) { throw "Your downloads folder at $path is currently missing" }
	& "$PSScriptRoot/open-file-explorer.ps1" "$path"
	$reply = "Your downloads."
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
