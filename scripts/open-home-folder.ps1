<#
.SYNOPSIS
	Opens the home folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's home folder.
#>

try {
	$path = Resolve-Path "~"
	if (-not(Test-Path "$path" -pathType container)) { throw "Your home folder at $path doesn't exist (yet)" }
	& "$PSScriptRoot/open-file-explorer.ps1" "$path"
	& "$PSScriptRoot/say.ps1" "Your home folder."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
