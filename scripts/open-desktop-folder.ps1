<#
.SYNOPSIS
	Opens the desktop folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's desktop folder.
#>

try {
	$path = Resolve-Path "~/Desktop"
	if (-not(Test-Path "$path" -pathType container)) { throw "Your desktop folder at $path doesn't exist yet." }
	& "$PSScriptRoot/open-file-explorer.ps1" "$path"
	& "$PSScriptRoot/say.ps1" "Your desktop folder."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
