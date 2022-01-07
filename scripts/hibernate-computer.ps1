<#
.SYNOPSIS
	Hibernates the Computer
.DESCRIPTION
	This PowerShell script hibernates the computer immediately.
.EXAMPLE
	PS> ./hibernate-computer
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& rundll32.exe powrprof.dll,SetSupendState 1,1,0 # bHibernate,bForce,bWakeupEventsDisabled
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Error: $($Error[0])"
	exit 1
}
