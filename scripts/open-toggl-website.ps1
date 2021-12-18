<#
.SYNOPSIS
	Opens Toggl Track
.DESCRIPTION
	This PowerShell script launches the Web browser with the Toggl Track website.
.EXAMPLE
	PS> ./open-toggl-website
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://track.toggl.com"
exit 0 # success
