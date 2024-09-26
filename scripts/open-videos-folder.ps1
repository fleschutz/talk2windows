<#
.SYNOPSIS
	Opens the user's videos folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's videos folder.
#>

try {
	$path = Resolve-Path "~/Videos"
	if (-not(Test-Path "$path" -pathType container)) { throw "Your videos folder at $path doesn't exist yet." }
	& "$PSScriptRoot/open-file-explorer.ps1" "$path"
	& "$PSScriptRoot/say.ps1" "Your videos."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
