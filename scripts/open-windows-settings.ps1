<#
.SYNOPSIS
	Open the Windows settings
.DESCRIPTION
	This PowerShell script launches the system settings of Windows.
#>

Start-Process ms-settings:
& "$PSScriptRoot/say.ps1" "Your Windows settings."
