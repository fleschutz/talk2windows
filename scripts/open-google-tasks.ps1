<#
.SYNOPSIS
	Opens Google Tasks
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Tasks.
.EXAMPLE
	PS> ./open-google-tasks
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Hold on."
& "$PSScriptRoot/open-browser.ps1" "https://tasks.google.com/embed/?origin=https://calendar.google.com&fullWidth=1"
exit 0 # success
