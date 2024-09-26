<#
.SYNOPSIS
	Launches the Microsoft Teams app
.DESCRIPTION
	This PowerShell script launches the Microsoft Teams application.
#>

try {
	Start-Process msteams:
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
