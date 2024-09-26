<#
.SYNOPSIS
	Sets a Reminder
.DESCRIPTION
	This PowerShell script creates a scheduled task that will display a popup message.
#>

#requires -version 4

param([string]$message = "", [datetime]$time)

try {
	$task = New-ScheduledTaskAction -Execute msg -Argument "* $message"
	$trigger = New-ScheduledTaskTrigger -Once -At $time
	$random = (Get-Random)
	Register-ScheduledTask -Action $task -Trigger $trigger -TaskName "Reminder_$random" -Description "Reminder"
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
