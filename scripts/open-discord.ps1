<#
.SYNOPSIS
	Launches Discord 
.DESCRIPTION
	This PowerShell script launches the Discord application.
.EXAMPLE
	PS> ./open-discord
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

function TryToExec { param($Folder, $Binary)
	if (test-path "$Folder/$Binary" -pathType leaf) {
		start-process "$Folder/$Binary" -WorkingDirectory "$Folder"
		exit 0 # success
	}
}

try {
	TryToExec "$HOME\AppData\Local\Discord\app-*" "Discord.exe"
	& "$PSScriptRoot/_reply.ps1" "Sorry, can't launch Discord - is it installed?"
	exit 1
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
