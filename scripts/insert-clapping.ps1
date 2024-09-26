<#
.SYNOPSIS
	Inserts Clapping Hands
.DESCRIPTION
	This PowerShell script inserts the clapping hands Unicode character.
#>

try {
	& "$PSScriptRoot/say.ps1" "Okay."

	$OutputEncoding = [console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding
	Set-Clipboard -value "👏"

	$obj = New-Object -com wscript.shell
	$obj.SendKeys("^V")
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
