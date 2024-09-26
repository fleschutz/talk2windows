<#
.SYNOPSIS
	Opens the user's SSH folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's SSH folder.
#>

try {
	$path = Resolve-Path "~/.ssh"
	if (-not(Test-Path "$path" -pathType container)) { throw "Your SSH folder at $path doesn't exist (yet)" }
	& "$PSScriptRoot/open-file-explorer.ps1" "$path"
	& "$PSScriptRoot/say.ps1" "Your SSH folder."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
