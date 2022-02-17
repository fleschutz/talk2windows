<#
.SYNOPSIS
	Opens Sunny Portal
.DESCRIPTION
	This PowerShell script launches the Web browser with the SMA Sunny Portal website.
.EXAMPLE
	PS> ./open-sunny-portal
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://sunnyportal.com"
exit 0 # success
