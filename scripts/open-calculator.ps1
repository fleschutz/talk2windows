<#
.SYNOPSIS
	Opens the calculator
.DESCRIPTION
	This PowerShell script launches the calculator application.
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
Start-Process ms-calculator:

