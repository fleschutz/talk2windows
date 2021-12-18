<#
.SYNOPSIS
	Closes the Microsoft Paint app 
.DESCRIPTION
	This PowerShell script closes the Microsoft Paint application gracefully.
.EXAMPLE
	PS> ./close-microsoft-paint
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

TaskKill /im mspaint.exe
if ($lastExitCode -ne "0") {
	& "$PSScriptRoot/give-reply.ps1" "Sorry, Microsoft Paint isn't running."
	exit 1
}
exit 0 # success
