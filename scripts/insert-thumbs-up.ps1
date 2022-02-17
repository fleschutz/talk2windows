<#
.SYNOPSIS
	Inserts the Thumbs Up Symbol
.DESCRIPTION
	This PowerShell script inserts the thumbs up Unicode character.
.EXAMPLE
	PS> ./insert-thumbs-up
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Okay."

	$OutputEncoding = [console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding
	Set-Clipboard -value "👍"

	$obj = New-Object -com wscript.shell
	$obj.SendKeys("^V")
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
