<#
.SYNOPSIS
	Launches Firefox
.DESCRIPTION
	This PowerShell script launches the Mozilla Firefox Web browser.
#>

param([string]$URL = "http://www.fleschutz.de")

try {
	& "$PSScriptRoot/_reply.ps1" "Hold on."

	Start-Process firefox.exe "$URL"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
