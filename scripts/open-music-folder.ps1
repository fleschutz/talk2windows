<#
.SYNOPSIS
	Opens the music folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's music folder.
#>

try {
	$path = Resolve-Path "~/Music"
	if (-not(Test-Path "$path" -pathType container)) { throw "Your music folder at $path is currently missing" }
	& "$PSScriptRoot/open-file-explorer.ps1" "$path"
	$reply = "Here's your music."
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
