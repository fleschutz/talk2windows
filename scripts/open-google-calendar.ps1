<#
.SYNOPSIS
	Opens Google Calendar
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Calendar.
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://calendar.google.com"
exit 0 # success
