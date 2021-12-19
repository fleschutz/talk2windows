<#
.SYNOPSIS
	Opens Toggl Track
.DESCRIPTION
	This PowerShell script launches the Web browser with Toggl Track.
.EXAMPLE
	PS> ./open-togl-track
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://track.toggl.com"
exit 0 # success
