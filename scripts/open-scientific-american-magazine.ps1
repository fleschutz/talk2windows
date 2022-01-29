<#
.SYNOPSIS
	Opens the Scientific American Magazine
.DESCRIPTION
	This PowerShell script launches the Web browser with the Scientific American magazine website.
.EXAMPLE
	PS> ./open-scientific-american-magazine
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.scientificamerican.com/"
exit 0 # success
