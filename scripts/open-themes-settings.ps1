<#
.SYNOPSIS
	Opens the themes settings of Windows
.DESCRIPTION
	This PowerShell script launches the themes settings of Windows.
#>

Start-Process ms-settings:themes
& "$PSScriptRoot/say.ps1" "Your themes settings."
