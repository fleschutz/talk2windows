<#
.SYNOPSIS
	Launches Screen Sketch
.DESCRIPTION
	This PowerShell script launches the Screen Sketch application.
#>

try {
	Start-Process ms-screensketch:
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
