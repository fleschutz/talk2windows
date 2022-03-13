<#
.SYNOPSIS
	Opens Google Play
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Play.
.EXAMPLE
	PS> ./open-google-play
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Play..."
& "$PSScriptRoot/open-browser.ps1" "https://play.google.com/store"
exit 0 # success
