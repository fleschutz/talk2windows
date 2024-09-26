<#
.SYNOPSIS
	Sets a reminder when it's noon
.DESCRIPTION
	This PowerShell script displays a reminder popup message when it's noon.
#>

try {
	& "$PSScriptRoot/say.ps1" "OK, at noon."
	$Noon = Get-Date -Hour 12 -Minute 0 -Second 0
	& "$PSScriptRoot/_set-reminder.ps1" "It's noon." "$Noon"
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
