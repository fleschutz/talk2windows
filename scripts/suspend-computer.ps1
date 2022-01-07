<#
.SYNOPSIS
	Suspends the Computer
.DESCRIPTION
	This PowerShell script suspends the computer immediately.
.EXAMPLE
	PS> ./suspend-computer
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Going to sleep."
	& rundll32.exe powrprof.dll,SetSuspendState 0,1,0 # bHibernate,bForce,bWakeupEventsDisabled
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
