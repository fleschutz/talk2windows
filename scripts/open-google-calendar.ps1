<#
.SYNOPSIS
	Opens Google Calendar
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Calendar.
#>

& "$PSScriptRoot/open-browser.ps1" "https://calendar.google.com"
& "$PSScriptRoot/_reply.ps1" "Okay."
exit 0 # success
