<#
.SYNOPSIS
	Opens the Microsoft Teams website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Microsoft Teams website.
.EXAMPLE
	PS> ./open-microsoft-teams-website
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/open-browser.ps1" "https://teams.microsoft.com"
exit 0 # success
