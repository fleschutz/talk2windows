<#
.SYNOPSIS
	Shows Starlink 
.DESCRIPTION
	This PowerShell script launches the Web browser and shows the Starlink satellites.
.EXAMPLE
	PS> ./show-star-link
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://starlink.sx/"
exit 0 # success
