<#
.SYNOPSIS
	Launches the Microsoft Paint app
.DESCRIPTION
	This PowerShell script launches the Microsoft Paint application.
#>

try {
	& "$PSScriptRoot/say.ps1" "Okay"
	start-process mspaint.exe
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
