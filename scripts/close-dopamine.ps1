<#
.SYNOPSIS
	Closes Dopamine
.DESCRIPTION
	This PowerShell script closes the audio player Dopamine gracefully.
#>

TaskKill /im Dopamine.exe
if ($lastExitCode -eq 0) {
	$reply = "Dopamine closed."
} else {
	$reply = "Sorry, Dopamine isn't running."
}
& "$PSScriptRoot/say.ps1" $reply
