<#
.SYNOPSIS
	Inserts the Perfect Symbol
.DESCRIPTION
	This PowerShell script inserts the perfect Unicode character at the current text cursor position.
#>

try {
	$OutputEncoding = [console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding
	Set-Clipboard -value "👌"

	(New-Object -com wscript.shell).SendKeys("^V")
	& "$PSScriptRoot/say.ps1" "Inserted."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
