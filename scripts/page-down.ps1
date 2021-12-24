<#
.SYNOPSIS
	Presses the Page Down key
.DESCRIPTION
	This PowerShell script presses the Page Down key.
.EXAMPLE
	PS> ./page-down
.NOTES
	Author:  Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$obj = New-Object -com wscript.shell
	$obj.SendKeys("{PGDN}")
	& "$PSScriptRoot/_reply.ps1" "OK."
	exit 0 # success
} catch {
	"Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}
