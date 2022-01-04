<#
.SYNOPSIS
	Opens Google Docs
.DESCRIPTION
	This PowerShell script launches the Web browser with the Google Docs website.
.EXAMPLE
	PS> ./open-google-docs
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://docs.google.com"
exit 0 # success
