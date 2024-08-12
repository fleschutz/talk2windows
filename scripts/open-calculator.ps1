<#
.SYNOPSIS
	Opens the calculator
.DESCRIPTION
	This PowerShell script launches the calculator application.
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
start-process ms-calculator:

