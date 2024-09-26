<#
.SYNOPSIS
	Hibernates the computer
.DESCRIPTION
	This PowerShell script enables hibernate mode for the local computer immediately. 
#>

try {
	& "$PSScriptRoot/say.ps1" "Bye bye."
	& rundll32.exe powrprof.dll,SetSuspendState 1,1,0 # bHibernate,bForce,bWakeupEventsDisabled
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
