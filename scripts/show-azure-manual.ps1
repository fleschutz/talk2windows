<#
.SYNOPSIS
	Shows the Microsoft Azure manual
.DESCRIPTION
	This script launches the Web browser with the Microsoft Azure manual.
.EXAMPLE
	PS> ./show-azure-manual
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_launch-browser.ps1" "https://docs.microsoft.com/en-us/azure"
exit 0 # success
