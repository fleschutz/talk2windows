<#
.SYNOPSIS
	Launches the Chrome browser
.DESCRIPTION
	This PowerShell script launches the Google Chrome Web browser.
.EXAMPLE
	PS> ./open-chrome
.PARAMETER URL
	Specifies an optional URL
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$URL = "http://www.fleschutz.de")

try {
	start-process chrome.exe "$URL"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
