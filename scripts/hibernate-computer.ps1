<#
.SYNOPSIS
	Hibernates the computer
.DESCRIPTION
	This PowerShell script enables hibernate mode for the local computer immediately. 
.EXAMPLE
	PS> ./hibernate-computer
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Bye bye."
	& rundll32.exe powrprof.dll,SetSuspendState 1,1,0 # bHibernate,bForce,bWakeupEventsDisabled
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
