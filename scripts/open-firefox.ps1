<#
.SYNOPSIS
	Launches Firefox
.DESCRIPTION
	This PowerShell script launches the Mozilla Firefox Web browser.
#>

param([string]$URL = "https://www.fleschutz.de")

try {
	& "$PSScriptRoot/say.ps1" "Hold on."
	Start-Process firefox.exe "$URL"
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
}
