<#
.SYNOPSIS
	Launches Outlook
.DESCRIPTION
	This PowerShell script launches the Microsoft Outlook email application.
.EXAMPLE
	PS> ./open-outlook
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

function TryToExec { param($Folder, $Binary)
	if (-not(Test-Path "$Folder/$Binary" -pathType leaf)) { return }
	start-process "$Folder/$Binary" -WorkingDirectory "$Folder"
	exit 0 # success
}

try {
	& "$PSScriptRoot/_reply.ps1" "Outlook..."
	TryToExec "C:\Program Files\Microsoft Office\root\Office16" "OUTLOOK.EXE"
	TryToExec "C:\Programs\Microsoft Office\Office14" "OUTLOOK.EXE"
	throw "Outlook isn't installed."
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
