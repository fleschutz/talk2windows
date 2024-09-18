<#
.SYNOPSIS
	Open the Windows settings
.DESCRIPTION
	This PowerShell script launches the system settings of Windows.
#>

Start-Process ms-settings:
& "$PSScriptRoot/_reply.ps1" "Your Windows settings."
exit 0 # success
