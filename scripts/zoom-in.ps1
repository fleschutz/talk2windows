<#
.SYNOPSIS
	Zooms into a page
.DESCRIPTION
	This PowerShell script presses the Zoom In keyboard shortcut.
#>

(New-Object -com wscript.shell).SendKeys("^{+}")
& "$PSScriptRoot/say.ps1" "Okay."
