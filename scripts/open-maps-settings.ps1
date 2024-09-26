<#
.SYNOPSIS
	Opens the maps settings of Windows
.DESCRIPTION
	This PowerShell script launches the maps settings of Windows.
#>

& "$PSScriptRoot/say.ps1" "Maps..."
Start-Process ms-settings:maps
