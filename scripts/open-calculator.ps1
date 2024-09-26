<#
.SYNOPSIS
	Opens the calculator
.DESCRIPTION
	This PowerShell script launches the calculator application.
#>

& "$PSScriptRoot/say.ps1" "Okay."
Start-Process ms-calculator:

