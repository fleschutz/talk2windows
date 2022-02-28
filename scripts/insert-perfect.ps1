<#
.SYNOPSIS
	Inserts the Perfect Symbol
.DESCRIPTION
	This PowerShell script inserts the perfect Unicode character at the current text cursor position.
.EXAMPLE
	PS> ./insert-perfect
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Okay."

	$OutputEncoding = [console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding
	Set-Clipboard -value "👌"

	$sh = New-Object -com wscript.shell
	$sh.SendKeys("^V")
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
