<#
.SYNOPSIS
	Opens GitHub
.DESCRIPTION
	This PowerShell script launches the Web browser with the GitHub website.
.EXAMPLE
	PS> ./open-github
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/open-browser.ps1" "https://github.com"
exit 0
