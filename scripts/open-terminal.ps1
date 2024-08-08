<#
.SYNOPSIS
	Opens Windows Terminal
.DESCRIPTION
	This PowerShell script launches the Windows Terminal application.
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
Start-Process wt.exe
exit 0
