<#
.SYNOPSIS
	Opens the Outlook website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Outlook website.
.EXAMPLE
	PS> ./open-outlook-website
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/open-browser.ps1" "https://outlook.office.com"
exit 0 # success
