<#
.SYNOPSIS
	Opens Windows Terminal
.DESCRIPTION
	This PowerShell script launches the Windows Terminal application.
#>

Start-Process wt.exe
& "$PSScriptRoot/say.ps1" "Your terminal."
