<#
.SYNOPSIS
	Scrolls down a page
.DESCRIPTION
	This PowerShell script presses the Page Down keyboard shortcut.
#>

(New-Object -com wscript.shell).SendKeys("{PGDN}")
& "$PSScriptRoot/say.ps1" "OK."
