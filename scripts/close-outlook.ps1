<#
.SYNOPSIS
	Closes the Microsoft Outlook app
.DESCRIPTION
	This PowerShell script closes the Microsoft Outlook email application gracefully.
#>

TaskKill /im outlook.exe
if ($lastExitCode -ne "0") {
	& "$PSScriptRoot/say.ps1" "Sorry, Microsoft Outlook isn't running."
	exit 1
}
exit 0 # success
