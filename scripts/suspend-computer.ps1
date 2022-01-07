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
	& rundll32.exe powrprof.dll,SetSupendState 0,1,0 # bHibernate,bForce,bWakeupEventsDisabled
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
