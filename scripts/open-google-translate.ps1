<#
.SYNOPSIS
	Opens Google Translate
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Translate.
.EXAMPLE
	PS> ./open-google-translate
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Translate..."
& "$PSScriptRoot/open-browser.ps1" "https://translate.google.com"
exit 0 # success
