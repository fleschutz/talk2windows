<#
.SYNOPSIS
	Sets a reminder when it's midnight
.DESCRIPTION
	This PowerShell script displays a reminder popup message when it's midnight.
#>

try {
	& "$PSScriptRoot/say.ps1" "OK, at midnight."
	$Midnight = Get-Date -Hour 23 -Minute 59 -Second 59
	& "$PSScriptRoot/_set-reminder.ps1" "It's midnight." "$Noon"
	exit 0
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
