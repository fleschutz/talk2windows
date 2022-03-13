<#
.SYNOPSIS
	Opens the taskbar settings of Windows
.DESCRIPTION
	This PowerShell script launches the taskbar settings of Windows.
.EXAMPLE
	PS> ./open-task-bar-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Task bar..."
Start-Process ms-settings:taskbar
exit 0 # success
