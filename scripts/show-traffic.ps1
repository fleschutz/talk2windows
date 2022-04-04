<#
.SYNOPSIS
	Shows the current traffic 
.DESCRIPTION
	This PowerShell script launches the Web browser with MSN showing the current traffic.
.EXAMPLE
	PS> ./show-traffic
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Hold on."
& "$PSScriptRoot/open-browser.ps1" "https://www.msn.com/en-us/traffic?lvl=11&intent=roadClosures"
exit 0 # success
