<#
.SYNOPSIS
	Opens Windows Terminal
.DESCRIPTION
	This PowerShell script launches the Windows Terminal application.
#>

& "$PSScriptRoot/say.ps1" "Okay."
Start-Process wt.exe
