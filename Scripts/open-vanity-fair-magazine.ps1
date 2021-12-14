<#
.SYNOPSIS
	Opens the Vanity Fair Magazine
.DESCRIPTION
	This script launches the Web browser with the Vanity Fair Magazine website.
.EXAMPLE
	PS> ./open-vanity-fair-magazine
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.vanityfair.com/"
exit 0 # success
