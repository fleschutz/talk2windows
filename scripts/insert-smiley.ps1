<#
.SYNOPSIS
	Inserts the Smiley Symbol
.DESCRIPTION
	This PowerShell script inserts the smiley Unicode character.
#>

try {
	$OutputEncoding = [console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding
	Set-Clipboard -value "😊"

	(New-Object -com wscript.shell).SendKeys("^V")

	& "$PSScriptRoot/say.ps1" "Smiley inserted."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
