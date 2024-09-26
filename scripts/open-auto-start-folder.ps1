<#
.SYNOPSIS
	Opens the autostart folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's autostart folder.
#>

try {
	$path = Resolve-Path "$HOME/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup"
	if (-not(Test-Path "$path" -pathType container)) { throw "Your autostart folder at $path doesn't exist yet." }
	& "$PSScriptRoot/open-file-explorer.ps1" "$path"
	& "$PSScriptRoot/say.ps1" "Your auto-starts."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
