<#
.SYNOPSIS
	Scrolls to bottom of page
.DESCRIPTION
	This PowerShell script presses the Bottom of Page keyboard shortcut.
#>

(New-Object -com wscript.shell).SendKeys("{END}")
& "$PSScriptRoot/say.ps1" "OK."
