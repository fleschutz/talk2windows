<#
.SYNOPSIS
	Opens Google Sheets
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Sheets.
.EXAMPLE
	PS> ./open-google-sheets
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://docs.google.com/spreadsheets/u/0/"
exit 0 # success
