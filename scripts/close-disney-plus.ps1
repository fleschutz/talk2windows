<#
.SYNOPSIS
	Closes Disney+
.DESCRIPTION
	This PowerShell script closes the Disney+ application gracefully.
#>

& "$PSScriptRoot/close-program.ps1" "Disney+" "ApplicationFrameHost" "RuntimeBroker"
exit 0 # success
