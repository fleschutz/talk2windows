<#
.SYNOPSIS
	Opens Google Sheets
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Sheets.
#>

& "$PSScriptRoot/say.ps1" "Hold on..."
& "$PSScriptRoot/open-browser.ps1" "https://docs.google.com/spreadsheets/u/0/"
