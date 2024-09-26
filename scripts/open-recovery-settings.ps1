<#
.SYNOPSIS
	Opens the recovery settings of Windows
.DESCRIPTION
	This PowerShell script launches the recovery settings of Windows.
#>

& "$PSScriptRoot/say.ps1" "Recovery..."
Start-Process ms-settings:recovery
