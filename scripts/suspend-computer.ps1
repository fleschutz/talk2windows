<#
.SYNOPSIS
	Suspends the computer
.DESCRIPTION
	This PowerShell script suspends the computer immediately.
#>

try {
	& "$PSScriptRoot/say.ps1" "Bye bye."
	& rundll32.exe powrprof.dll,SetSuspendState 0,1,0 # bHibernate,bForce,bWakeupEventsDisabled
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
