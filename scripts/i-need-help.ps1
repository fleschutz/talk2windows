<#
.SYNOPSIS
	Shows the voice manual
.DESCRIPTION
	This script launches the Web browser with the voice control manual.
.EXAMPLE
	PS> ./i-need-help
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/PowerShell
#>

& "$PSScriptRoot/open-browser.ps1" "https://github.com/fleschutz/talk2windows"
exit 0 # success
