<#
.SYNOPSIS
	Open D: Drive
.DESCRIPTION
	This PowerShell script launches the File Explorer with the D: drive folder.
#>

try {
	if (-not(Test-Path "D:" -pathType container)) { throw "There is no D drive." }
	& "$PSScriptRoot/open-file-explorer.ps1" "D:"
	& "$PSScriptRoot/say.ps1" "Your D drive."
	exit 0 # success
} catch {
        & "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
        exit 1
}
