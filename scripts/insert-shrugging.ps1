<#
.SYNOPSIS
	Inserts a Person shrugging
.DESCRIPTION
	This PowerShell script inserts a person shrugging Unicode character.
.EXAMPLE
	PS> ./insert-shrugging
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Okay."

	$OutputEncoding = [console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding
	Set-Clipboard -value "🤷"

	$obj = New-Object -com wscript.shell
	$obj.SendKeys("^V")
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
