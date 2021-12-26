<#
.SYNOPSIS
	Scrolls to Top of Page
.DESCRIPTION
	This PowerShell script presses the Top of Page keyboard shortcut.
.EXAMPLE
	PS> ./scroll-to-top
.NOTES
	Author:  Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$obj = New-Object -com wscript.shell
	$obj.SendKeys("{HOME}")
	& "$PSScriptRoot/_reply.ps1" "OK."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
