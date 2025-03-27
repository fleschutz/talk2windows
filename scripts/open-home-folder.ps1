<#
.SYNOPSIS
	Opens the home folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's home folder.
#>

try {
	$path = Resolve-Path "~"
	if (-not(Test-Path "$path" -pathType container)) { throw "Your home folder at $path is currently missing" }
	& "$PSScriptRoot/open-file-explorer.ps1" "$path"
	$reply = "Your home folder."
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
