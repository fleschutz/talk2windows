<#
.SYNOPSIS
	Closes the Task Manager
.DESCRIPTION
	This PowerShell script closes the Task Manager application gracefully.
.EXAMPLE
	PS> ./close-task-manager
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

tskill taskmgr
exit 0 # success
