<#
.SYNOPSIS
	Opens the Apps settings of Windows
.DESCRIPTION
	This PowerShell script launches the apps settings of Windows.
#>

Start-Process ms-settings:appsfeatures
& "$PSScriptRoot/say.ps1" "Your apps and features."
