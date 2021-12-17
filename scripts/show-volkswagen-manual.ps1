<#
.SYNOPSIS
	Shows the Volkswagen manual
.DESCRIPTION
	This script launches the Web browser with the Volkswagen manual.
.EXAMPLE
	PS> ./show-volkswagen-manual
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_launch-browser.ps1" "https://userguide.volkswagen.de"
exit 0 # success
