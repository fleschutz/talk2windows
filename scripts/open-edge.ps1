<#
.SYNOPSIS
	Launches Edge 
.DESCRIPTION
	This PowerShell script launches the Microsoft Edge Web browser.
#>

& "$PSScriptRoot/say.ps1" "Okay"
Start-Process microsoft-edge://
