<#
.SYNOPSIS
	Opens Google Docs
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Docs.
.EXAMPLE
	PS> ./open-google-docs
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Docs..."
& "$PSScriptRoot/open-browser.ps1" "https://docs.google.com"
exit 0 # success
