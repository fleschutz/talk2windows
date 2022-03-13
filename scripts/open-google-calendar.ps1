<#
.SYNOPSIS
	Opens Google Calendar
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Calendar.
.EXAMPLE
	PS> ./open-google-calendar
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Calendar..."
& "$PSScriptRoot/open-browser.ps1" "https://calendar.google.com"
exit 0 # success
