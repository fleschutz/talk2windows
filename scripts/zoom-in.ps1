<#
.SYNOPSIS
	Zooms into a page
.DESCRIPTION
	This PowerShell script presses the Zoom In keyboard shortcut.
#>

(New-Object -com wscript.shell).SendKeys("^{+}")
& "$PSScriptRoot/_reply.ps1" "Okay."
exit 0
