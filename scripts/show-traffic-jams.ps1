<#
.SYNOPSIS
	Shows current traffic jams
.DESCRIPTION
	This PowerShell script launches the Web browser with MSN showing current traffic jams.
.EXAMPLE
	PS> ./show-traffic-jams
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Hold on."
& "$PSScriptRoot/open-browser.ps1" "https://www.msn.com/en-us/traffic?lvl=11&intent=roadClosures"
exit 0 # success
