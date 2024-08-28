<#
.SYNOPSIS
	Opens the user's screenshots folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's screenshots folder.
#>

function GetScreenshotsFolder {
	$path = [Environment]::GetFolderPath('MyPictures')
	if (-not(Test-Path "$path" -pathType container)) { throw "Your pictures folder at $path doesn't exist (yet)" }
	if (Test-Path "$path\Screenshots" -pathType container) { $path = "$path\Screenshots" }
	return $path
}

try {
	$path = GetScreenshotsFolder
	& "$PSScriptRoot/open-file-explorer.ps1" "$path"
	& "$PSScriptRoot/_reply.ps1" "Your screenshots."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}