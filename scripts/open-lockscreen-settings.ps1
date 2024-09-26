<#
.SYNOPSIS
	Opens the lockscreen settings of Windows
.DESCRIPTION
	This PowerShell script launches the lockscreen settings of Windows.
#>

& "$PSScriptRoot/say.ps1" "Lockscreen..."
Start-Process ms-settings:lockscreen
