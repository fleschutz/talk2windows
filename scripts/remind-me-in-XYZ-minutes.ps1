<#
.SYNOPSIS
	Remind in <N> minutes
.DESCRIPTION
	This PowerShell script displays a reminder popup message in <N> minutes.
#>

param([int]$number)

try {
	& "$PSScriptRoot/say.ps1" "OK, in $number."
	$now = (Get-Date).AddMinutes($number)
	& "$PSScriptRoot/_set-reminder.ps1" "Your $number minutes have passed now." "$now"
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
