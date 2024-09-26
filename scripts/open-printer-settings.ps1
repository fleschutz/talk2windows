<#
.SYNOPSIS
	Opens the printer settings of Windows
.DESCRIPTION
	This PowerShell script launches the printer settings of Windows.
#>

& "$PSScriptRoot/say.ps1" "Hold on..."
Start-Process ms-settings:printers
