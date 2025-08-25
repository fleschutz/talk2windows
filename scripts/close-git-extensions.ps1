<#
.SYNOPSIS
	Closes the Git Extensions app
.DESCRIPTION
	This PowerShell script closes the Git Extensions application gracefully.
#>

& "$PSScriptRoot/say.ps1" "Okay."
TaskKill /im GitExtensions.exe
if ($lastExitCode -ne 0) { & "$PSScriptRoot/say.ps1" "Sorry, Git Extensions isn't running yet." }
