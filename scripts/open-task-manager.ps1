<#
.SYNOPSIS
	Starts the Task Manager
.DESCRIPTION
	This PowerShell script launches the Windows Task Manager application.
.EXAMPLE
	PS> ./open-task-manager
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	start-process taskmgr.exe
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
