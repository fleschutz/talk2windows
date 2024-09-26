<#
.SYNOPSIS
	Closes Mp3tag
.DESCRIPTION
	This PowerShell script closes the Mp3tag application gracefully.
.EXAMPLE
	PS> ./close-mp-three-tag
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

TaskKill /im Mp3tag.exe /f /t
if ($lastExitCode -ne "0") {
	& "$PSScriptRoot/say.ps1" "Sorry, MP3 tag isn't running."
	exit 1
}
exit 0 # success
