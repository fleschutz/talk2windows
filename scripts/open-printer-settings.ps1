<#
.SYNOPSIS
	Opens the printer settings of Windows
.DESCRIPTION
	This PowerShell script launches the printer settings of Windows.
#>

Start-Process ms-settings:printers
& "$PSScriptRoot/say.ps1" "Your printer settings."