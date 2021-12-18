<#
.SYNOPSIS
	Opens the HolidayCheck website
.DESCRIPTION
	This PowerShell script launches the Web browser with the HolidayCheck website.
.EXAMPLE
	PS> ./open-holiday-check-website
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.holidaycheck.com"
exit 0 # success
