<#
.SYNOPSIS
	Checks the Internet Speed
.DESCRIPTION
	This PowerShell script launches the Web browser with Cloudflare's Speed Test website.
.EXAMPLE
	PS> ./check-internet-speed
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://speed.cloudflare.com/"
exit 0 # success
