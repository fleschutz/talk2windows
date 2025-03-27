<#
.SYNOPSIS
	Opens the user's screenshots folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's screenshots folder.
#>

try {
	$path = [Environment]::GetFolderPath('MyPictures')
	if (-not(Test-Path "$path" -pathType container)) { throw "Your pictures folder at $path is currently missing" }
	if (Test-Path "$path\Screenshots" -pathType container) { $path = "$path\Screenshots" }

	& "$PSScriptRoot/open-file-explorer.ps1" "$path"
	$reply = "Your screenshots."
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
