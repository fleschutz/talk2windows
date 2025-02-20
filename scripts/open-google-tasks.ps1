<#
.SYNOPSIS
	Opens Google Tasks
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Tasks.
#>

& "$PSScriptRoot/open-browser.ps1" "https://tasks.google.com/tasks/"
& "$PSScriptRoot/say.ps1" "Your tasks."

