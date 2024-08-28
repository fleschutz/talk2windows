<#
.SYNOPSIS
	Opens the ATTower folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the ATTower folder.
#>

try {
	$path = Resolve-Path "D:\ATTower"
	if (-not(Test-Path "$path" -pathType container)) { throw "Your ATTower folder at $path doesn't exist (yet)" }
	& "$PSScriptRoot/open-file-explorer.ps1" "$path"
	$reply = "Here's it."
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/_reply.ps1" $reply
