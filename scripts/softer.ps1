<#
.SYNOPSIS
	Turn Volume Down
.DESCRIPTION
	This PowerShell script turns the audio volume down by 10%.
#>

try {
	$obj = New-Object -com wscript.shell
	for ([int]$i = 0; $i -lt 10; $i += 2) {	$obj.SendKeys([char]174) } # each tick is -2%
	$reply = "10% softer."
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
