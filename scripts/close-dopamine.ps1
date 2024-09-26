<#
.SYNOPSIS
	Closes Dopamine
.DESCRIPTION
	This PowerShell script closes the audio player Dopamine gracefully.
.EXAMPLE
	PS> ./close-dopamine
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

TaskKill /im Dopamine.exe
if ($lastExitCode -ne "0") {
	& "$PSScriptRoot/say.ps1" "Sorry, Dopamine isn't running."
	exit 1
}
exit 0 # success
