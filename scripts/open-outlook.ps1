<#
.SYNOPSIS
	Launches Outlook
.DESCRIPTION
	This PowerShell script launches the Microsoft Outlook email application.
#>

function TryToExec { param($Folder, $Binary)
	if (-not(Test-Path "$Folder/$Binary" -pathType leaf)) { return }
	Start-Process "$Folder/$Binary" -WorkingDirectory "$Folder"
	exit 0 # success
}

try {
	& "$PSScriptRoot/say.ps1" "Okay."
	TryToExec "C:\Program Files\Microsoft Office\root\Office16" "OUTLOOK.EXE"
	TryToExec "C:\Programs\Microsoft Office\Office14" "OUTLOOK.EXE"
	throw "Outlook isn't installed yet."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
