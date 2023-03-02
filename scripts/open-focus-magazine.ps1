<#
.SYNOPSIS
	Opens the Focus Magazine
.DESCRIPTION
	This PowerShell script launches the Web browser with the German Focus magazine website.
.EXAMPLE
	PS> ./open-focus-magazine
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://www.focus.de"
exit 0 # success
