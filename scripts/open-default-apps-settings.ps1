<#
.SYNOPSIS
	Opens the default apps settings of Windows
.DESCRIPTION
	This PowerShell script launches the default apps settings of Windows.
#>

& "$PSScriptRoot/say.ps1" "Apps..."
Start-Process ms-settings:defaultapps
