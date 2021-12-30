<#
.SYNOPSIS
	Shows the Airbus Cockpit
.DESCRIPTION
	This PowerShell script launches the Web browser showing Airbus A320 cockpit displays and panels.
.EXAMPLE
	PS> ./show-airbus-cockpit
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://fleschutz.droppages.com/Service/A320DP/panels.html"
exit 0 # success
