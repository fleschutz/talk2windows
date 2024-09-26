<#
.SYNOPSIS
	Launches the Microsoft Weather app
.DESCRIPTION
	This PowerShell script launches the Microsoft Weather application.
#>

try {
	Start-Process msnweather:
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
