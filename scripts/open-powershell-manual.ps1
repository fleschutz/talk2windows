<#
.SYNOPSIS
	Opens the PowerShell manual
.DESCRIPTION
	This PowerShell script launches the Web browser with the PowerShell manual.
.EXAMPLE
	PS> ./open-powershell-manual
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://docs.microsoft.com/en-us/powershell/"
exit 0 # success
