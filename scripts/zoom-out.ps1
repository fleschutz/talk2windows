<#
.SYNOPSIS
	Zooms out of a Page
.DESCRIPTION
	This PowerShell script presses the Zoom Out keyboard shortcut.
#>

(New-Object -com wscript.shell).SendKeys("^-")
& "$PSScriptRoot/_reply.ps1" "Okay."
exit 0
