<#
.SYNOPSIS
	Launch the Magnifier
.DESCRIPTION
	This PowerShell script launches the Windows Screen Magnifier application.
#>

try {
	Start-Process magnify.exe
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
