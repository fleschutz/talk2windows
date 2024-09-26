<#
.SYNOPSIS
	Launches Screen Clip
.DESCRIPTION
	This PowerShell script launches the Screen Clip application.
#>

try {
	Start-Process ms-screenclip:
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
