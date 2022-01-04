<#
.SYNOPSIS
	Opens the Serenade manual
.DESCRIPTION
	This PowerShell script launches the Web browser with the Serenade manual.
.EXAMPLE
	PS> ./open-serenade-manual
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://serenade.ai/docs/"
exit 0 # success
