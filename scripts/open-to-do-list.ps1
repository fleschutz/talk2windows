<#
.SYNOPSIS
	Opens Google Tasks
.DESCRIPTION
	This PowerShell script launches the Web browser with the Google Tasks website.
.EXAMPLE
	PS> ./open-to-do-list
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://tasks.google.com/embed/?origin=https://calendar.google.com&fullWidth=1"
exit 0 # success
