<#
.SYNOPSIS
	Opens the SystemRescue manual
.DESCRIPTION
	This PowerShell script launches the Web browser with the SystemRescue online manual.
.EXAMPLE
	PS> ./open-system-rescue-manual
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.system-rescue.org/manual/"
exit 0 # success
