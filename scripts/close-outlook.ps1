<#
.SYNOPSIS
	Closes the Microsoft Outlook app
.DESCRIPTION
	This PowerShell script closes the Microsoft Outlook email application gracefully.
.EXAMPLE
	PS> ./close-outlook
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

TaskKill /im outlook.exe
if ($lastExitCode -ne "0") {
	& "$PSScriptRoot/_reply.ps1" "Sorry, Microsoft Outlook isn't running."
	exit 1
}
exit 0 # success
