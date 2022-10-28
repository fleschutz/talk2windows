<#
.SYNOPSIS
	Opens Google Fonts
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Fonts.
.EXAMPLE
	PS> ./open-google-fonts
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz / License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://fonts.google.com"
exit 0 # success
