<#
.SYNOPSIS
	Sets a Reminder
.DESCRIPTION
	This PowerShell script creates a scheduled task that will display a popup message.
.EXAMPLE
	PS> ./remind-me "Dentist" "4/10/2021 12:00 PM"
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/PowerShell
#>

#requires -version 4

param([string]$Message = "", [datetime]$Time)

try {
	$Task = New-ScheduledTaskAction -Execute msg -Argument "* $Message"
	$Trigger = New-ScheduledTaskTrigger -Once -At $Time
	$Random = (Get-Random)
	Register-ScheduledTask -Action $Task -Trigger $Trigger -TaskName "Reminder_$Random" -Description "Reminder"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
