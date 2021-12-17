<#
.SYNOPSIS
	Shows the PowerShell manual
.DESCRIPTION
	This script launches the Web browser with the PowerShell manual.
.EXAMPLE
	PS> ./show-powershell-manual
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_launch-browser.ps1" "https://docs.microsoft.com/en-us/powershell/"
exit 0 # success
