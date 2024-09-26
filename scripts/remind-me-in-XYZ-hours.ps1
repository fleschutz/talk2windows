<#
.SYNOPSIS
	Remind in <N> hours
.DESCRIPTION
	This PowerShell script displays a reminder popup message in <N> hours.
#>

param([int]$number)

try {
	& "$PSScriptRoot/say.ps1" "OK, in $number hours."
	$now = (Get-Date).AddMinutes($number * 60)
	& "$PSScriptRoot/_set-reminder.ps1" "Your $number hours have passed now." "$now"
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
