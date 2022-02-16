<#
.SYNOPSIS
	Inserts a Smiley
.DESCRIPTION
	This PowerShell script inserts a smiley Unicode character.
.EXAMPLE
	PS> ./insert-smiley
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$OutputEncoding = [console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding
	
	Set-Clipboard -value "😊"

	$obj = New-Object -com wscript.shell
	$obj.SendKeys("^V")
	& "$PSScriptRoot/_reply.ps1" "Done."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
