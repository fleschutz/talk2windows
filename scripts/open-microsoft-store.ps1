<#
.SYNOPSIS
	Opens Microsoft Store
.DESCRIPTION
	This PowerShell script launches the Microsoft Store application.
#>

& "$PSScriptRoot/_reply.ps1" "Hold on."
Start-Process ms-windows-store:
