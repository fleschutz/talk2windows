<#
.SYNOPSIS
	Turn volume on
.DESCRIPTION
	This PowerShell script unmutes the audio output.
#>

try {
	(New-Object -com wscript.shell).SendKeys([char]173)
	$reply = "Audio is on."
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
