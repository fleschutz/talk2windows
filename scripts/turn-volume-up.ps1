<#
.SYNOPSIS
	Turn Volume Up
.DESCRIPTION
	This PowerShell script turns the audio volume up by 10%.
#>

param([int]$percent = 10)

try {
	$obj = New-Object -com wscript.shell
	for ([int]$i = 0; $i -lt $percent; $i += 2) { $obj.SendKeys([char]175) } # each tick is +2%
	$reply = "$($percent)% louder."
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
