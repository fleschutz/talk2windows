<#
.SYNOPSIS
	Closes the Visual Studio app
.DESCRIPTION
	This PowerShell script closes the Microsoft Visual Studio application gracefully.
#>

& "$PSScriptRoot/say.ps1" "Okay."
TaskKill /im devenv.exe
if ($lastExitCode -ne "0") {
	& "$PSScriptRoot/say.ps1" "Sorry, Visual Studio isn't running."
	exit 1
}
exit 0 # success
