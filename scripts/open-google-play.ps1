<#
.SYNOPSIS
	Opens Google Play
.DESCRIPTION
	This PowerShell script launches the Web browser with the Google Play website.
.EXAMPLE
	PS> ./open-google-play
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://play.google.com/store"
exit 0 # success
