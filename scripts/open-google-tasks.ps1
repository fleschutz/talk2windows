<#
.SYNOPSIS
	Opens Google Tasks
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Tasks.
.EXAMPLE
	PS> ./open-google-tasks
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Tasks..."
& "$PSScriptRoot/open-browser.ps1" "https://tasks.google.com/embed/?origin=https://calendar.google.com&fullWidth=1"
exit 0 # success
