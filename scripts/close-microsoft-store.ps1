<#
.SYNOPSIS
	Closes Microsoft Store
.DESCRIPTION
	This PowerShell script closes the Microsoft Store application gracefully.
#>

TaskKill /im WinStore.App.exe /f /t
if ($lastExitCode -eq "0") {
	$reply = "Closed."
} else {
	$reply = "Sorry, Microsoft Store isn't running."
}
& "$PSScriptRoot/say.ps1" $reply
