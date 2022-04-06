<#
.SYNOPSIS
	Launches Firefox
.DESCRIPTION
	This PowerShell script launches the Mozilla Firefox Web browser.
.EXAMPLE
	PS> ./open-firefox
.PARAMETER URL
	Specifies an URL
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

param([string]$URL = "http://www.fleschutz.de")

try {
	& "$PSScriptRoot/_reply.ps1" "Okay"
	start-process firefox.exe "$URL"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
