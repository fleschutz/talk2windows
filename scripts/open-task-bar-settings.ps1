<#
.SYNOPSIS
	Opens the Windows taskbar settings 
.DESCRIPTION
	This PowerShell script launches the Windows taskbar settings application.
.EXAMPLE
	PS> ./open-task-bar-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-settings:taskbar
exit 0 # success
